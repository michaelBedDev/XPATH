<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>
    <xsl:mode on-no-match="shallow-copy"/>

    <xsl:template match="/">
    Hello, World! The first product is:
    <xsl:value-of select="inventory/product[1]/name/text()"/>
    </xsl:template>



</xsl:stylesheet>
