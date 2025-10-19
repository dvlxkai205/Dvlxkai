<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>20/10 Có chắc yêu là đây</title>
    <style>
      body { font-family: Arial, sans-serif; margin: 20px; background: #fafafa; }
      h1 { color: #d63384; }
      table { border-collapse: collapse; width: 100%; }
      th, td { border: 1px solid #ccc; padding: 8px; }
      th { background: #f8f9fa; }
    </style>
  </head>
  <body>
    <h1>Danh sách media trong XML</h1>
    <table>
      <tr><th>Loại</th><th>Tên file</th><th>Độ phân giải</th><th>Thời lượng</th></tr>
      <xsl:for-each select="//media">
        <tr>
          <td><xsl:value-of select="@type"/></td>
          <td><xsl:value-of select="@filename"/></td>
          <td><xsl:value-of select="@width"/>x<xsl:value-of select="@height"/></td>
          <td><xsl:value-of select="@duration"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
</html>
</xsl:template>
</xsl:stylesheet>
