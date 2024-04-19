<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

    <xsl:output method="html" indent="yes"/>


    <xsl:template match="/" >
        <head>
            <title>teaches2</title>
        </head>

        <body>
            <table border="1">
                <tbody>
                    <xsl:apply-templates select="teaches/teaches-tuple"/>
                </tbody>
            </table>
        </body>
    </xsl:template>

    <xsl:template match="teaches-tuple">

            <tr>
                <th><xsl:value-of select="@course"/></th>
            </tr>

            <tr>
                <td><xsl:value-of select="@course"/></td>
                <td><xsl:value-of select="@lecturer"/></td>
            </tr>

    </xsl:template>
</xsl:stylesheet>
