<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1>ZESPOŁY:</h1>
<!--                ZADANIE 6A-->
<!--                <ol>-->
<!--                    <xsl:for-each select="ZESPOLY/ROW">-->
<!--                        <li>-->
<!--                            <xsl:value-of select="NAZWA"></xsl:value-of>-->
<!--                        </li>-->
<!--                    </xsl:for-each>-->
<!--                </ol>-->

                <ol>
                    <xsl:apply-templates select="ZESPOLY/ROW" mode="naglowek"/>
                </ol>

                <xsl:apply-templates select="ZESPOLY/ROW" mode="szczegoly"/>


            </body>
        </html>
    </xsl:template>
    <xsl:template match="ROW" mode="naglowek">
        <li>
            <a href='#z{ID_ZESP}'><xsl:value-of select="NAZWA"/></a>
        </li>
    </xsl:template>
    <xsl:template match="ZESPOLY/ROW" mode="szczegoly">
        <b id="z{ID_ZESP}"><xsl:value-of select="NAZWA"/></b><br/>
        <b><xsl:value-of select="ADRES"/></b><br/><br/>

        <xsl:if test="count(PRACOWNICY/ROW)>0">
            <table border="1">
                <tr>
                    <th>Nazwisko</th>
                    <th>Etat</th>
                    <th>Zatrudniony</th>
                    <th>Placa pod.</th>
                    <th>Id szefa</th>
                </tr>
                <xsl:apply-templates select="PRACOWNICY/ROW" mode="wiersz">
                    <xsl:sort select="NAZWISKO"/>
                </xsl:apply-templates>
            </table>
        </xsl:if>
        Liczba pracowników:<xsl:value-of select="count(PRACOWNICY/ROW)"/><br/><br/>
    </xsl:template>
    <xsl:template match="ZESPOLY/ROW/PRACOWNICY/ROW" mode="wiersz">
        <xsl:variable name="szef" select="ID_SZEFA"/>
        <tr>
            <td>
                <xsl:value-of select="NAZWISKO"/>
            </td>
            <td>
                <xsl:value-of select="ETAT"/>
            </td>
            <td>
                <xsl:value-of select="ZATRUDNIONY"/>
            </td>
            <td>
                <xsl:value-of select="PLACA_POD"/>
            </td>
            <td>
                <xsl:choose>
                <xsl:when test="string(ID_SZEFA)">
                    <xsl:value-of select="//ZESPOLY/ROW/PRACOWNICY/ROW[ID_PRAC=$szef]/NAZWISKO"/>
                </xsl:when>
                    <xsl:otherwise>
                        brak
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>