<?xml version="1.0"?>
 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
    <xsl:template match="/survey">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Region</th>
                        <th>Location</th>
                        <th>Feature type</th>
                        <th>ROV Dives</th>
                        <th>Area covered (ha)</th>
                        <th>Depth range surveyed (m)</th>
                        <th>Distance from land (km)</th>
                        <th>Shipping activity proxy</th>
                        <th>Items (ha-1)</th>
                    </tr>
                    <xsl:for-each select="isro">
                    <xsl:if test="region='Atlantic'">
                    <xsl:sort select="FeatureType"/>
                    <xsl:choose>
                    <xsl:when test="FeatureType='SeaMount'">
                            <td bgcolor="#FFA500">
                                <xsl:value-of select=" FeatureType" />
                                    </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td bgcolor="#FF0000">
                                            <xsl:value-of select=" FeatureType" />
                                        </td>
                                    </xsl:otherwise>
                        <tr>
                            <td>
                                <xsl:value-of select="region" />
                            </td>
                            <td>
                                <xsl:value-of select="location" />
                            </td>
                            <td>
                                <xsl:value-of select="FeatureType" />
                            </td>
                            <td>
                                <xsl:value-of select="ROVdives" />
                            </td>
                            <td>
                                <xsl:value-of select="AreaCovered" />
                            </td>
                            <td>
                                <xsl:value-of select="DepthRangesurveyed" />
                            </td>
                            <td>
                                <xsl:value-of select="Distancefromland" />
                            </td>
                            <td>
                                <xsl:value-of select="Shippingactivityproxy" />
                            </td>
                            <td>
                                <xsl:value-of select="Items" />
                            </td>
                        </tr>
    </xsl:if>
    </xsl:for-each>

                    <xsl:for-each select="isro">
                        <tr>
                            <td>
                                <xsl:value-of select="region" />
                            </td>
                            <td>
                                <xsl:value-of select="location" />
                            </td>
                            <td>
                                <xsl:value-of select="FeatureType" />
                            </td>
                            <td>
                                <xsl:value-of select="ROVdives" />
                            </td>
                            <td>
                                <xsl:value-of select="AreaCovered" />
                            </td>
                            <td>
                                <xsl:value-of select="DepthRangesurveyed" />
                            </td>
                            <td>
                                <xsl:value-of select="Distancefromland" />
                            </td>
                            <td>
                                <xsl:value-of select="Shippingactivityproxy" />
                            </td>
                            <td>
                                <xsl:value-of select="Items" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
 
</xsl:stylesheet>