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
                    <xsl:apply-templates select="inventory/product"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="product">
        <li>
            <p>Product: <xsl:value-of select="@code"/> </p>
            <ul>
                <li>Name: <xsl:value-of select="name/text()"/></li>
                <li>Weight: <xsl:value-of select="weight"/></li>
            </ul>
        </li>
    </xsl:template>

</xsl:stylesheet>
