<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>找回密码-在线文档编辑器</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <style>
        .message {
            color: green;
            font-weight: bold;
        }
        .error {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body class="login_bg">
<section class="loginBox">
    <header class="loginHeader">
        <h1>找回密码</h1>
    </header>
    <section class="loginCont">
        <form class="loginForm" action="${pageContext.request.contextPath}/forgotPasswordAction.jsp" name="forgotPasswordForm" id="forgotPasswordForm" method="post">
            <div class="info">${error}</div>
            <div class="inputbox">
                <label for="userName">用户名：</label>
                <input type="text" class="input-text" id="userName" name="userName" placeholder="请输入用户名" required/>
            </div>
            <div class="inputbox">
                <label for="userPassword">新密码：</label>
                <input type="password" id="userPassword" name="userPassword" placeholder="请输入新密码" required/>
            </div>
            <div class="inputbox">
                <label for="confirmPassword">确认新密码：</label>
                <input type="password" id="confirmPassword" name="confirmPassword" placeholder="请确认新密码" required/>
            </div>
            <div class="inputbox">
                <label for="userEmail">邮箱：</label>
                <input type="email" class="input-text" id="userEmail" name="userEmail" placeholder="请输入您的邮箱" required/>
            </div>
            <div class="inputbox">
                <label for="emailCode">邮箱验证码：</label>
                <input type="text" class="input-text" id="emailCode" name="emailCode" placeholder="请输入邮箱验证码" required/>
                <input type="button" value="发送验证码" onclick="sendEmailCode()"/>
            </div>
            <div class="buttonRow">
                <input type="submit" value="找回密码"/>
                <input type="reset" value="重置"/>
                <input type="button" value="返回登录" onclick="window.location.href='${pageContext.request.contextPath}/login.do'"/>
            </div>
        </form>
    </section>
</section>
<script src="${pageContext.request.contextPath}/js/forgotPassword.js"></script>
</body>
</html>
