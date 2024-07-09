function sendEmailCode() {
    const email = document.getElementById('userEmail').value;
    if (email) {
        // Assuming you have an endpoint to send the email code
        fetch(`${pageContext.request.contextPath}/sendEmailCode.do?email=` + encodeURIComponent(email))
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('验证码已发送到您的邮箱。');
                } else {
                    alert('发送验证码失败，请重试。');
                }
            })
            .catch(error => console.error('Error:', error));
    } else {
        alert('请输入您的邮箱。');
    }
}
