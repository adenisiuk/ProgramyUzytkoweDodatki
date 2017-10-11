<?xml version="1.0" encoding="utf-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s6hl="java:net.sf.xslthl.ConnectorSaxon6"
    xmlns:xslthl="http://xslthl.sf.net"
    extension-element-prefixes="s6hl xslthl"
>
<!-- <xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/html/docbook.xsl"/> -->
<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/xhtml5/chunk.xsl"/>
<xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/highlighting/common.xsl"/>
<xsl:import 
href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/html/highlight.xsl"/>
<xsl:param name="chunker.output.encoding">utf-8</xsl:param>
<xsl:output method="html"
            encoding="UTF-8"
            indent="no"/>
<xsl:param name="chunk.first.sections" select="1"/>
<xsl:param name="use.id.as.filename" select="1"/>
<xsl:param name="ulink.target" select="'_blank'"></xsl:param>
<xsl:param name="local.l10n.xml" select="document('')"/>
<xsl:param name="xref.with.number.and.title" select="0"></xsl:param>
<xsl:param name="html.ext">.html</xsl:param>
<xsl:param name="chunker.output.method">html</xsl:param>
<xsl:param name="chunker.output.omit-xml-declaration">yes</xsl:param>
<xsl:param name="make.valid.html" select="1"></xsl:param>
<xsl:param name="highlight.source" select="1"/>
<xsl:param name="highlight.xslthl.config">file:////usr/share/xml/docbook/stylesheet/docbook-xsl-ns/highlighting/xslthl-config.xml</xsl:param>
<xsl:param name="emphasis.propagates.style" select="1"></xsl:param>
<xsl:param name="html.stylesheet">mystyle.css</xsl:param>
<l:i18n xmlns:l="http://docbook.sourceforge.net/xmlns/l10n/1.0">
  <l:l10n language="pl">
   <l:context name="title">
      <l:template name="example" text="Ćwiczenie %n: %t"/>
      <l:template name="Example" text="Ćwiczenie %n: %t"/>
    </l:context>
<!--   <l:context name="title-numbered">
      <l:template name="chapter" text="Zadanie %n: %t"/>
    </l:context>-->
   <l:context name="xref-number">
      <l:template name="example" text="ćwiczeniu %n"/>
      <l:template name="Example" text="Ćwiczenie %n"/>
    </l:context>
   <l:context name="xref-number">
      <l:template name="table" text="tabeli %n"/>
    </l:context>
   <l:context name="xref-number">
      <l:template name="figure" text="rysunku %n"/>
    </l:context>
  </l:l10n>
</l:i18n>
<xsl:param name="generate.toc">
appendix  toc,title
article/appendix  nop
article   toc,title
book      toc,title
chapter   toc,title
part      toc,title
preface   toc,title
qandadiv  toc
qandaset  toc
reference toc,title
sect1     toc
sect2     toc
sect3     toc
sect4     toc
sect5     toc
section   toc
set       toc,title
</xsl:param>
<!--<xsl:output method="html" encoding="UTF-8" indent="yes"/>-->
</xsl:stylesheet>

