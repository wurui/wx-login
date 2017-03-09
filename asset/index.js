define([], function () {
    //https://open.weixin.qq.com/connect/oauth2/authorize?appid=APPID&redirect_uri=REDIRECT_URI&response_type=code&scope=SCOPE&state=STATE#wechat_redirect

    return {
        init: function ($mod) {
            var env=$mod.attr('data-env');
            if(env=='online'){
                var f=$('form',$mod)[0];
                if(!f.uid.value){
                    var appid= f.appid.value;
                    var state=1;
                    var scope= f.scope.value||'snsapi_base';
                    if(scope!='snsapi_userinfo'){
                        scope='snsapi_base';
                    }
                    var redirect_uri=location.protocol+'//'+location.hostname+'/login/oauth_wx?backurl='+encodeURIComponent(location.href)+'&secret='+ f.secret.value+'&appid='+ appid

                    location.href='https://open.weixin.qq.com/connect/oauth2/authorize?appid='+appid+'&redirect_uri='+encodeURIComponent(redirect_uri)+'&response_type=code&scope='+scope+'&state='+state+'#wechat_redirect'
                }
            }else{
                console.log('env',env)
            }


        }
    }
})
