<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>    
    <xsl:template match="/">
        <html>
            <head>
                <title>Books List</title>
            </head>
            <body>
                <table border="1">
                    <thead bgcolor="#9acd32">
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Price</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="books/book">
                            <xsl:choose>
                                <xsl:when test="price > 25">
                                    <tr bgcolor="yellow">
                                        <td>
                                            <xsl:value-of select="title"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="author"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="genre"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="price"/>
                                        </td>
                                    </tr>
                                </xsl:when>
                                <xsl:otherwise>
                                     <tr>
                                        <td>
                                            <xsl:value-of select="title"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="author"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="genre"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="price"/>
                                        </td>
                                    </tr>
                                </xsl:otherwise>
                            </xsl:choose>
                         
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
                                
