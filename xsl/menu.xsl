<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Duskwell &amp; Vine </title>

    <!-- CSS -->
    <link rel="stylesheet" href="../css/page_2.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Satisfy&amp;display=swap" rel="stylesheet"/>
</head>

<body>

<div class="container">

    <!-- Header -->
    <h1>Duskwell &amp; Vine Menu</h1>
    <a href="../test.html" class="back-btn">← Back to Home</a>

    <!-- Menu Sections -->
    <xsl:for-each select="menu/category">
        <table class="menu-table">
            <!-- Category title -->
            <tr>
                <th colspan="3" class="category-title">
                    <xsl:value-of select="@name"/>
                </th>
            </tr>

            <!-- Table headers -->
            <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Description</th>
            </tr>

            <!-- Menu items -->
            <xsl:for-each select="item">
                <tr>
                    <td><xsl:value-of select="name"/></td>
                    <td>£<xsl:value-of select="price"/></td>
                    <td><xsl:value-of select="description"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:for-each>

    <!-- Bottom image -->
    <div class="image">
        <img src="../picture/img1.jpeg" alt="food"/>
    </div>

    <!-- Footer tooltip -->
    <p class="footer">ⓘ <span class="tooltip">Done by: Your Name</span></p>

</div>

</body>
</html>

</xsl:template>

</xsl:stylesheet>