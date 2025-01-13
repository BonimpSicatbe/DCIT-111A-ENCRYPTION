<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../../css/login.css">
</head>

<body>
    <div class="login-container">
        <form method="post" action="../process/login_process.php">
            <h1>Login</h1>
            <div class="form-group">
                <input type="email" id="email" name="email" placeholder=" " required>
                <label for="email">Email</label>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" placeholder=" " required>
                <label for="password">Password</label>
            </div>

            <div class="row">
                <div class="form-group">
                    <input type="text" id="captcha" name="captcha" placeholder=" " required>
                    <label for="captcha">CAPTCHA</label>
                </div>
                <a href="javascript: refreshCaptcha();"><img id="captchaImage" src="./captcha.php" alt="CAPTCHA"></a>
            </div>

            <button type="submit">Login</button>
            <div class="bottom-row">
                <div class="row">
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember">Remember Me</label>
                </div>
                <p>Dont have an Account? <a href="./register.php">register.</a></p>
            </div>
        </form>
    </div>

    <script src="../../js/login.js"></script>
</body>

</html>