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

<!--                ZADANIE 6B-->
                <ol>
                    <xsl:apply-templates select="ZESPOLY/ROW" mode="pierwsze"/>
                </ol>

                <xsl:apply-templates select="ZESPOLY/ROW" mode="szczegoly"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="ROW" mode="pierwsze">
        <li><xsl:value-of select="NAZWA"/></li>
    </xsl:template>
    <xsl:template match="ZESPOLY/ROW" mode="szczegoly">
        <b><xsl:value-of select="NAZWA"/></b><br/>
        <b><xsl:value-of select="ADRES"/></b><br/><br/>

        <table border="1">
            <tr>
                <th>Nazwisko</th>
                <th>Etat</th>
                <th>Zatrudniony</th>
                <th>Placa pod.</th>
                <th>Id szefa</th>
            </tr>
            <xsl:apply-templates select="PRACOWNICY/ROW" mode="wiersz"/>
        </table><br/>
    </xsl:template>
    <xsl:template match="ZESPOLY/ROW/PRACOWNICY/ROW" mode="wiersz">
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
                <xsl:value-of select="ID_SZEFA"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>