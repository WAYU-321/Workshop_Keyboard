<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>XML With XSL</title></head>
    <body>
        <table width="100%" border="1" style="border-collapse: collapse">
            <tr>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>รหัสการซื้อขาย</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>ชื่อของที่ซื้อขาย</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>ราคาซื้อขาย</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>จำนวนการซื้อขาย</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>วันเดือนปีที่ซื้อขาย</b></font></td>
            </tr>
            <xsl:for-each select="purchase/purchase_data">
                <tr>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="purchase_code"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="purchase_name"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="purchase_price"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="purchase_quantity"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="purchase_MMY"/></font></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>