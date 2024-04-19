<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="text" indent="yes"/>


    <xsl:template match="/" mode="#all">
        <xsl:apply-templates select="root/record"/>

    </xsl:template>


    <xsl:template match="record" mode="#default">
        SAP ID: <xsl:value-of select="id"/>
        Title: <xsl:value-of select="title"/>
        Date <xsl:apply-templates select="date"/>
    </xsl:template>

    <xsl:template match="date" mode="#default">
            Year: <xsl:value-of select="year"/>
            Month: <xsl:value-of select="month"/>
            Day: <xsl:value-of select="day"/>
            <xsl:text> &#xa;</xsl:text>
    </xsl:template>

</xsl:stylesheet>
