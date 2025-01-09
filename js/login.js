function refreshCaptcha() {
    var captchaImage = document.getElementById('captchaImage');
    captchaImage.src = './captcha.php?' + Date.now(); // This line ensures the CAPTCHA image is refreshed
}