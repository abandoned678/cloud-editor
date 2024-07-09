<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线文档编辑器</title>
    <link rel="stylesheet" href="css/homepage.css">
</head>
<body>
<header>
    <div class="logo">在线文档编辑器</div>
</header>
<main>
    <aside class="sidebar">
        <button onclick="window.location.href='vip.jsp'">成为VIP</button>
    </aside>
    <section class="chat-container">
        <div class="chat-box" id="chat-box">
            <!-- 聊天消息将会显示在这里 -->
        </div>
        <form id="chat-form" onsubmit="return sendMessage()">
            <input type="text" id="chat-input" placeholder="输入您的消息..." required>
            <button type="submit">发送</button>
        </form>
    </section>
</main>
<footer>
    <p>&copy; 2024 在线文档编辑器. 版权所有.</p>
</footer>
<script src="js/homepage.js"></script>
</body>
</html>
