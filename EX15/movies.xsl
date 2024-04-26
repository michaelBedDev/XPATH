<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>



    <xsl:template match="/">
        <html>
            <head>
                <title>BLOCKBUSTER</title>
            </head>
            <body>
            <h1>Hay <xsl:value-of select="count(Movies/Movie)"/> estrenos en cartelera</h1>
                <ul>
                    <xsl:apply-templates select="Movies/Movie" >
                    <xsl:sort select="Year/number()" order="ascending"></xsl:sort>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="Movie">
        <li><xsl:value-of select="Title/text()"/> - <xsl:value-of select="Year/number()"/></li>
    </xsl:template>

</xsl:stylesheet>
