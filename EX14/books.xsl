<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/" mode="#all">

    <html>
    <head>
        <title>Books 14</title>
    </head>
    <body>
        <caption>Number of books:
            <xsl:value-of select="count(books/book)"></xsl:value-of>
        </caption>
        <table style="border:1px solid black; background-color:green">
            <thead>
                <th>Title</th>
                <th>Author</th>
                <th>ISBN</th>
                <th>Price</th>
            </thead>
            <tbody>
                <xsl:apply-templates select="books/book"/>
            </tbody>
        </table>
        <img style="width:500; height:500" src="https://hipocritalector.com/wp-content/uploads/2022/12/cristiano-ronaldo.jpg"/>
    </body>
</html>
    </xsl:template>

    <xsl:template match="book">
        <xsl:choose>
            <xsl:when test="(price/number() &lt;= 10 )">
                <tr style="background-color:aquamarine">
                    <td><xsl:value-of select="title/text()"/></td>
                    <td><xsl:value-of select="author/text()"/></td>
                    <td><xsl:value-of select="isbn/text()"/></td>
                    <td><xsl:value-of select="price/text()"/></td>
                </tr>
            </xsl:when>
            <xsl:when test="(price/number() &gt; 10) and ((price/number() &lt;= 15))">
                <tr style="background-color:gold">
                    <td><xsl:value-of select="title/text()"/></td>
                    <td><xsl:value-of select="author/text()"/></td>
                    <td><xsl:value-of select="isbn/text()"/></td>
                    <td><xsl:value-of select="price/text()"/></td>
                </tr>
            </xsl:when>
            <xsl:otherwise>
                <tr style="background-color:crimson; color:white">
                    <td><xsl:value-of select="title/text()"/></td>
                    <td><xsl:value-of select="author/text()"/></td>
                    <td><xsl:value-of select="isbn/text()"/></td>
                    <td><xsl:value-of select="price/text()"/></td>
                </tr>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
