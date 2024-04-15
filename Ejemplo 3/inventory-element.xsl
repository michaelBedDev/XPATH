<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="xml" indent="yes"/>


    <xsl:template match="/" >
        <xsl:element name="item">
            <xsl:attribute name="attr" select="inventory/product[2]/@code"></xsl:attribute>
            <xsl:value-of select="inventory/product[2]/name/text()"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
