<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ns="http://www.tei-c.org/ns/1.0" version="1.0"
    exclude-result-prefixes="ns">
    <xsl:output indent="no" method="html"/>
    
    <xsl:template match="ns:TEI">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title>
                    <xsl:value-of select="ns:teiHeader/ns:fileDesc/ns:titleStmt/ns:title"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates select="ns:text/ns:body"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="ns:div/ns:head">
        <h2>
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="ns:div/ns:div/ns:head">
        <h3>
            <xsl:apply-templates/>
        </h3>
    </xsl:template>
    
    <xsl:template match="ns:div/ns:div/ns:div/ns:head">
        <h4>
            <xsl:apply-templates/>
        </h4>
    </xsl:template>
    
    <xsl:template match="ns:body">
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="ns:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

</xsl:stylesheet>