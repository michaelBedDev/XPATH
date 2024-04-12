<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/">
        Listings
        <xsl:apply-templates select="listing/account"/>
        <xsl:apply-templates select="listing/money"/>
    </xsl:template>

    <xsl:template match="account">
        <xsl:value-of select="holder/text()"/>
        --
    </xsl:template>

    <xsl:template match="money" >
        <xsl:value-of select="data/currency/text()"/>
        :
    </xsl:template>
</xsl:stylesheet>
