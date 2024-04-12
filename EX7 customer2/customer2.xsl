<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"

            version="3.0">

    <xsl:output method="html" indent="yes"/>


    <xsl:template match="/" mode="#all">
        <html>
            <head>
                <title></title>
            </head>
            <body>
                <p>The name of the client is <xsl:value-of select="customer/name/first/text()"/>
                 and his surname is <xsl:value-of select="customer/name/last/text()"/>.
                 He lives at <xsl:value-of select="customer/address/street/text()"/>
                 in <xsl:value-of select="customer/address/city/text()"/>.
                </p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
