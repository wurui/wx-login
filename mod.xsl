<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">

    <xsl:template match="/root" name="wurui.wx-login">
        <xsl:param name="appid"/>
        <xsl:param name="secret"/>
        <xsl:param name="scope"/>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-wx-login" ox-mod="wx-login" data-env="{login/env}">


            <form>
                <input type="hidden" value="{login/uid}" name="uid"/>
                <xsl:if test="not(login/uid)">
                    <p>login...</p>
                    <input type="hidden" value="{$appid}" name="appid"/>
                    <input type="hidden" value="{$secret}" name="secret"/>
                    <input type="hidden" value="{$scope}" name="scope"/>
                </xsl:if>
            </form>

        </div>
    </xsl:template>

</xsl:stylesheet>
