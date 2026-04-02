<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<head>

<title>Duskwell &amp; Vine</title>

<link rel="stylesheet" href="../css/page_2.css"/>

<link href="https://fonts.googleapis.com/css2?family=Satisfy&amp;display=swap" rel="stylesheet"/>
<style>
body {
margin:0;
font-family:sans-serif;
color:#ffffff;
}
</style>
</head>

<body>

<div class="container">

<!-- Header -->
<h1>Duskwell &amp; Vine Menu</h1>

<a href="../main.html" class="back">← Back to Home</a>

<!-- Menu Sections -->
<xsl:for-each select="menu/category">

<table class="menutable">

<tr>
<th colspan="3" class="categorytitle">
<xsl:value-of select="@name"/>
</th>
</tr>

<tr>
<th>Item</th>
<th>Price</th>
<th>Description</th>
</tr>

<xsl:for-each select="item">

<tr>

<td>
<xsl:value-of select="name"/>
</td>

<td>
£<xsl:value-of select="price"/>
</td>

<td>
<xsl:value-of select="description"/>
</td>

</tr>

</xsl:for-each>

</table>

</xsl:for-each>

<!-- Bottom images -->
<div class="image">

<img src="../picture/food3.jpeg" alt="food"/>

<img src="../picture/food1.jpeg" alt="food"/>

</div>

<!-- Footer icon -->
<p class="footer">

ⓘ

<span class="icon">
Done by:<br/>
MAHI<br/>
FARAH<br/>
AFNAN<br/>
NUHA

</span>

</p>

</div>

</body>

</html>

</xsl:template>

</xsl:stylesheet>