<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.wx-login">
        <xsl:param name="appid"/>
        <xsl:param name="secret"/>
        <xsl:param name="scope"/>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-wx-login" ox-mod="wx-login" data-env="{env/domain}">
            <form>
                <input type="hidden" value="{login/uid}" name="uid"/>
                <xsl:choose>
                    <xsl:when test="not(login/uid)">
                        <input type="hidden" value="{$appid}" name="appid"/>
                        <input type="hidden" value="{$secret}" name="secret"/>
                        <input type="hidden" value="{$scope}" name="scope"/>
                    </xsl:when>
                    <xsl:otherwise>
                        Welcome:<img src="http://i.oxm1.cc/uploads/{login/uid}/user/avatar.png@!60"/><xsl:value-of select="login/nick"/>
                    </xsl:otherwise>
                </xsl:choose>
            </form>
        </div>
    </xsl:template>

</xsl:stylesheet>
