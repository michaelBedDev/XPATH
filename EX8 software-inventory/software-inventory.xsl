<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>List</title>
            </head>
            <body>
                <ul>
                    <li><xsl:apply-templates select="inventory/product"/></li>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="product">
    <ul>
        <li><xsl:value-of select="name/text()"/></li>
        <li><xsl:value-of select="weight"/></li>
    </ul>
    </xsl:template>

</xsl:stylesheet>
