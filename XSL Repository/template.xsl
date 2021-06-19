<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="xml" />
    
    
    <xsl:template match="/">
        <root>
        <xsl:for-each select="//data/item">
            <line>
               <text type='text'><xsl:value-of select="text"/></text>
               <conversation_id><xsl:value-of select="conversation_id"/></conversation_id>
               <id><xsl:value-of select="id"/></id>
               <retweet_count><xsl:value-of select="retweet_count"/></retweet_count>
               <created_at><xsl:value-of select="created_at"/></created_at>
               <media_key><xsl:value-of select="/media_keys/item"/></media_key>
            </line>
        </xsl:for-each>
        </root>
    </xsl:template>
    
</xsl:stylesheet>