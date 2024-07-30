<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>XML With XSL</title></head>
    <body>
        <table width="100%" border="1" style="border-collapse: collapse">
            <tr>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>รหัสลูกค้า</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>ชื่อลูกค้า</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>นามสกุลลูกค้า</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>อายุลูกค้า</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>เบอร์โทรศัพท์ลูกค้า</b></font></td>
            </tr>
            <xsl:for-each select="customer/customer_data">
                <tr>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="customer_code"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="customer_firstname"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="customer_lastname"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="customer_age"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="customer_phon"/></font></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>