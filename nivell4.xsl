<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Biblioteca - Filtres i condicions</h1>

        <h2>Llibres disponibles</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[@estat='disponible']">
            <li><xsl:value-of select="titol"/></li>
          </xsl:for-each>
        </ul>

        <h2>Llibres amb preu > 12 €</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[preu > 12]">
            <li><xsl:value-of select="titol"/> (<xsl:value-of select="preu"/> €)</li>
          </xsl:for-each>
        </ul>

        <h2>Tots els llibres (amb indicació d'antic)</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
              <xsl:if test="any &lt; 1980">
                — <em>Llibre antic</em>
              </xsl:if>
            </li>
          </xsl:for-each>
        </ul>

        <h2>Estat de cada llibre</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/> —
              <xsl:choose>
                <xsl:when test="@estat='prestat'">En préstec</xsl:when>
                <xsl:otherwise>Disponible</xsl:otherwise>
              </xsl:choose>
            </li>
          </xsl:for-each>
        </ul>

        <h2>Fantasia i distopia</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[genere='fantasia' or genere='distopia']">
            <li><xsl:value-of select="titol"/> (<xsl:value-of select="genere"/>)</li>
          </xsl:for-each>
        </ul>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
