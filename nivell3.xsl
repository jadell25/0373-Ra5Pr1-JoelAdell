<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h1>Biblioteca</h1>

        <h2>Títols dels llibres</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

        <h2>Títol i autor</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/> - <xsl:value-of select="autor"/>
            </li>
          </xsl:for-each>
        </ul>

        <h2>Taula de llibres (3 columnes)</h2>
        <table border="1">
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
          </tr>
          <xsl:for-each select="biblioteca/llibre">
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Taula de llibres (4 columnes)</h2>
        <table border="1">
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
            <th>Preu</th>
          </tr>
          <xsl:for-each select="biblioteca/llibre">
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <td><xsl:value-of select="preu"/> €</td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
