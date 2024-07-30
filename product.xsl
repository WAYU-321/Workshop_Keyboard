<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>XML With XSL</title></head>
<body>
<table width="100%" border="1" style="border-collapse: collapse">
    <tr>
        <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>รหัสสินค้า</b></font></td>
        <td width="30%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>ชื่อสินค้า</b></font></td>
        <td width="15%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>รายละเอียดสินค้า</b></font></td>
        <td width="10%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>ราคาสินค้า</b></font></td>
        <td width="30%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>จำนวนสินค้า</b></font></td>
    </tr>
<xsl:for-each select="product/product_data">
    <tr>
        <td><font face="MS Sans Serif" size="3"><xsl:value-of select="product_code"/></font></td>
        <td><font face="MS Sans Serif" size="3"><xsl:value-of select="product_name"/></font></td>
        <td><font face="MS Sans Serif" size="3"><xsl:value-of select="product_details"/></font></td>
        <td><font face="MS Sans Serif" size="3"><xsl:value-of select="product_price"/></font></td>
        <td><font face="MS Sans Serif" size="3"><xsl:value-of select="product_quantity"/></font></td>
    </tr>
</xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>