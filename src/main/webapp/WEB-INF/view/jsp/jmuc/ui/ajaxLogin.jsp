<%@ page contentType="text/html; charset=UTF-8"%>  
<html>  
    <head>  
        <title>正在<strong>登录</strong>....</title>  
    </head>  
    <body>  
        <script type="text/javascript">  
            <%  
                Boolean isFrame = (Boolean)request.getAttribute("isFrame");  
                Boolean isLogin = (Boolean)request.getAttribute("isLogin");  
                // <strong>登录</strong>成功  
                if(isLogin){  
                    if(isFrame){%>  
                        //parent.location.replace('${service}?ticket=${ticket}')  
                    <%} else{%>  
                        location.replace('${service}?ticket=${ticket}')  
                    <%}  
                }  
            %>  
            // 回调  
            ${callback}({'login':${isLogin ? '"success"': '"false"'}, 'msg': ${isLogin ? '""': '"用户名或密码错误！"'}})  
        </script>  
    </body>  
</html>