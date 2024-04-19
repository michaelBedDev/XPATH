<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Books</title>
            </head>
            <body>
                <h1>Books</h1>

                    <ol>
                        <xsl:apply-templates select="books/book"/>
                    </ol>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="book">
        <xsl:if test="(price/number() > 10)">
            <li>
                Title: <xsl:value-of select="title"/>
                Author: <xsl:value-of select="author"/>
                Price: <xsl:value-of select="price"/>
            </li>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
