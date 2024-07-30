<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head><title>XML With XSL</title></head>
    <body>
        <table width="100%" border="1" style="border-collapse: collapse">
            <tr>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>รหัสพนักงาน</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>ชื่อพนักงาน</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>นามสกุลพนักงาน</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>อายุพนักงาน</b></font></td>
                <td width="5%" bgcolor="black"><font face="MS Sans Serif" size="3" color="white"><b>เบอร์โทรศัพท์พนักงาน</b></font></td>
            </tr>
            <xsl:for-each select="employee/employee_data">
                <tr>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="employee_code"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="employee_firstname"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="employee_lastname"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="employee_age"/></font></td>
                    <td><font face="MS Sans Serif" size="3"><xsl:value-of select="employee_phon"/></font></td>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>