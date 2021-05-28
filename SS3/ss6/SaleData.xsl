<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:for-each select="CottonDesk/Saleperson">
            <xsl:if test="Product='laptop'">
                <xsl:choose>
                    <xsl:when test="Saleperson >30000">
                        <span stype="color:blue;">
                            NAME:
                            <xsl:value-of select="Name"/>
                            AGE:
                            <xsl:value-of select="Age"/>
                            Your Commision is $5000.
                        </span>
                    </xsl:when>

                    <xsl:when test="Saleperson >20000">
                        <span stype="color:green;">
                            NAME:
                            <xsl:value-of select="Name"/>
                            AGE:
                            <xsl:value-of select="Age"/>
                            Your Commision is $1000.
                        </span>
                    </xsl:when>

                    <xsl:when test="Saleperson >10000">
                        <span stype="color:magenta;">
                            NAME:
                            <xsl:value-of select="Name"/>
                            AGE:
                            <xsl:value-of select="Age"/>
                            Your Commision is $500.
                        </span>
                    </xsl:when>

                    <xsl:otherwise>
                        <span stype="color:red;">
                            NAME:
                            <xsl:value-of select="Name"/>
                            AGE:
                            <xsl:value-of select="Age"/>
                            Your Commision is $0.
                        </span>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>