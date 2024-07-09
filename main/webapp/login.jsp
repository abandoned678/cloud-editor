<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>系统登录-在线文档编辑器</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
</head>
<body class="login_bg">
<section class="loginBox">
    <header class="loginHeader">
        <h1>在线文档编辑器</h1>
    </header>
    <section class="loginCont">
        <form class="loginForm" action="${pageContext.request.contextPath}/login.do" name="actionForm" id="actionForm" method="post">
            <div class="info">${error}</div>
            <div class="inputbox">
                <label for="userName">用户名：</label>
                <input type="text" class="input-text" id="userName" name="userName" placeholder="请输入用户名" required/>
            </div>
            <div class="inputbox">
                <label for="userPassword">密码：</label>
                <input type="password" id="userPassword" name="userPassword" placeholder="请输入密码" required/>
            </div>
            <div class="buttonRow">
                <input type="submit" value="登录"/>
                <input type="button" value="忘记密码" onclick="window.location.href='${pageContext.request.contextPath}/forgotPasswordAction.jsp'"/>
                <input type="button" value="注册" onclick="window.location.href='${pageContext.request.contextPath}/register.jsp'"/>
            </div>
        </form>
    </section>
</section>
</body>
</html>
