<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
<html>
<head>
<title>Trainees</title>
<style>
table {
border-collapse: collapse;
width: 60%;
}
th, td {
border: 1px solid black;
padding: 8px;
}
th {
background-color: #f2f2f2;
}
</style>
</head>

<body>

<h2>Trainees Information</h2>

<table>
<tr>
<th>Name</th>
<th>Email</th>
<th>Course</th>
<th>Action</th>
</tr>

<xsl:for-each select="trainees/trainee [name != '']">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="email"/></td>
<td><xsl:value-of select="course"/></td>
<td>
<form method="post" action="delete.php">
<input type="hidden" name="index" value="{position()-1}"/>
<input type="submit" value="Delete"/>
</form>
</td>
</tr>

</xsl:for-each>

</table>
<h2>Add trainees></h2>
<form method="post" action="trainees.php">
<input type="text" name="name"></input>
<input type="email" name="email"></input>
<input type="text" name="course"></input>
<input type="submit" value="Submit"></input>
</form>

</body>
</html>

</xsl:template>

</xsl:stylesheet>
