<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>


    <xsl:template match="/">
        <html>
            <head>
                <title>Records</title>
                <style>
                    .colourRED {
                    color: red;
                    }
                </style>
            </head>
            <body>

                <h1>Records: <xsl:value-of select="count(//record[city/text()='Glasgow'][date/year/number() = 1790])"/> </h1>
                <h2>Records for Glasgow before 1790</h2>
                <xsl:apply-templates select="root/record"/>


            </body>
        </html>
    </xsl:template>

    <xsl:template match="record">
        <xsl:if test="(city/text()='Glasgow') and (date/year/number() = 1790)">
            <p class="colourRED" >[<xsl:value-of select="id"/>]</p>
            <p><xsl:value-of select="city"/></p>
            <p><xsl:value-of select="text/p[1]"/></p>
        </xsl:if>
    </xsl:template>



</xsl:stylesheet>
