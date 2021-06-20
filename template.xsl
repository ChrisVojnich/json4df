<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:output method="xml" />
    
    
    <xsl:template match="/">
        <root>
            <xsl:for-each select="//data/item[created_at]">
                <nesto>
                    <xsl:variable name="v_url" select="attachments/media_keys/item" />
                    <text type='text'><xsl:value-of select="text"/></text> 
                    <url><xsl:value-of select="//includes/media/item[media_key=$v_url]/preview_image_url|//includes/media/item[media_key=$v_url]/url"/></url>
                    <conversation_id><xsl:value-of select="conversation_id"/></conversation_id>
                    <id><xsl:value-of select="id"/></id>
                    <retweet_count><xsl:value-of select="public_metrics/retweet_count"/></retweet_count>
                    <created_at><xsl:value-of select="created_at"/></created_at>              
                </nesto>
            </xsl:for-each>
        </root>
    </xsl:template>
    
    
</xsl:stylesheet>

