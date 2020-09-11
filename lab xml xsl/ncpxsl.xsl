<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/survey">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th>Region</th>
                        <th>Location</th>
                        <th>Feature type</th>
                        <th>ROV Dives</th>
                        <th>Area covered</th>
                        <th>Depth range surveyed </th>
                        <th>Distance from land</th>
                        <th>Shipping activity proxy</th>
                        <th>Items</th>
                    </tr>
                    <xsl:for-each select="isro">
                        <tr>
                            <td>
                                <xsl:value-of select="region" />
                            </td>
                            <td>
                                <xsl:value-of select="location" />
                            </td>
                            <td>
                                <xsl:value-of select="featuretype" />
                            </td>
                            <td>
                                <xsl:value-of select="rovdives" />
                            </td>
                            
                            <td>
                                 <xsl:value-of select="areacovered" />
                            </td>
                               
                            <td>
                                <xsl:value-of select="depthrange" />
                            </td>
                            <td>
                                <xsl:value-of select="distance" />
                            </td>
                            <td>
                                <xsl:value-of select="shipping" />
                            </td>
                            <td>
                                <xsl:value-of select="items" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
