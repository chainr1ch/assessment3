<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/badges">
        <html>
            <head>
                <title>Activity Badges</title>
                <style type="text/css">
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    h1 { color: #333; }
                    h2 { color: #555; margin-top: 30px; border-bottom: 1px solid #ccc; }
                    .description { font-style: italic; margin: 10px 0; }
                    .level { margin: 5px 0; }
                    .copyright { margin-top: 40px; padding-top: 20px; border-top: 2px solid #333; font-size: 0.9em; color: #666; }
                </style>
            </head>
            <body>
                <h1>Activity Badges</h1>
                
                <xsl:for-each select="badge[@type='activity']">
                    <xsl:sort select="name" order="ascending"/>
                    
                    <div class="badge">
                        <h2><xsl:value-of select="name"/></h2>
                        <p class="description"><xsl:value-of select="description"/></p>
                        
                        <p class="level">
                            <xsl:text>Beaver: </xsl:text>
                            <xsl:choose>
                                <xsl:when test="levels/availability[@level='beaver'] = 'Available'">
                                    <xsl:text>Available</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>Not Available</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </p>
                        
                        <p class="level">
                            <xsl:text>Cub: </xsl:text>
                            <xsl:choose>
                                <xsl:when test="levels/availability[@level='cub'] = 'Available'">
                                    <xsl:text>Available</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>Not Available</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </p>
                        
                        <p class="level">
                            <xsl:text>Scout: </xsl:text>
                            <xsl:choose>
                                <xsl:when test="levels/availability[@level='scout'] = 'Available'">
                                    <xsl:text>Available</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>Not Available</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </p>
                    </div>
                </xsl:for-each>
                
                <!-- 修复：直接用 &#169; 显示 © 符号 -->
                <div class="copyright">
                    <p>&#169; College Productions Ltd</p>
                </div>
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>