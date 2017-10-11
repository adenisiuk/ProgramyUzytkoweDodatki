TARGET = addons


make: $(addsuffix /index.html, $(TARGET)) $(addsuffix /mystyle.css, $(TARGET))


%/index.html: tmp/%.xml $(wildcard *.xsl)
# 	saxon-xslt $< docbook.xsl base.dir="$(shell basename $< .xml)/"
# 	xsltproc --nonet --stringparam base.dir $(shell basename $< .xml)/ docbook.xsl $<
	java -cp "/usr/share/java/saxon.jar:/usr/share/java/xslthl.jar"  -Dxslthl.config="file:////usr/share/xml/docbook/stylesheet/docbook-xsl-ns/highlighting/xslthl-config.xml"   com.icl.saxon.StyleSheet  $<   docbook.xsl base.dir="$(shell basename $< .xml)/"

tmp/%.xml: %.xml %.P
	xmllint --xinclude $< >$@

clean:
	rm -f $(TARGET)/*.html
	rm -f $(TARGET)/*.css
	rm -f tmp/*.xml
	rm -f *.P

%/mystyle.css: css/mystyle-source.css
	perl -e 'use CSS::Minifier qw(minify); print  minify(input => *STDIN);'> $@ < css/mystyle-source.css

css/mystyle-source.css: less/mystyle.less
	lessc less/mystyle.less css/mystyle-source.css
	

.SECONDARY:

%.P : %.xml
	`perl -e 'print "tmp/$(shell basename $< .xml).xml : "; while(<STDIN>) {if(/^\s*<xi:include\s+xmlns:xi="http:\/\/www.w3.org\/2001\/XInclude"\s+href="(.*)"\s+\/>/){  print "$$1 "}}' < $< > $@`


include $(wildcard *.P)
