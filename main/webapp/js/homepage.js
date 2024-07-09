function sendMessage() {
    const chatInput = document.getElementById('chat-input');
    const chatBox = document.getElementById('chat-box');

    if (chatInput.value.trim() === '') {
        return false;
    }

    const userMessage = chatInput.value;
    displayMessage(userMessage, 'user');

    // 模拟服务器响应
    setTimeout(() => {
        const botMessage = getBotResponse(userMessage);
        displayMessage(botMessage, 'bot');
    }, 1000);

    chatInput.value = '';
    chatBox.scrollTop = chatBox.scrollHeight;

    return false;
}

function displayMessage(message, sender) {
    const chatBox = document.getElementById('chat-box');
    const messageElement = document.createElement('div');
    messageElement.className = `chat-message ${sender}`;
    messageElement.textContent = message;
    chatBox.appendChild(messageElement);
}

function getBotResponse(userMessage) {
    // 在这里添加与后端的交互逻辑或简单的模拟响应
    return "这是一个示例响应：" + userMessage;
}
