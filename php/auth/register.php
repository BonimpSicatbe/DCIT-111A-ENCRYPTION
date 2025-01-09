<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../../css/register.css">
</head>
<body>
    <div class="login-container">
        <form method="post" action="../process/register_process.php">
            <h1>Register</h1>
            <div class="form-group">
                <input type="text" id="firstname" name="firstname" placeholder=" " required>
                <label for="firstname">Firstname</label>
            </div>

            <div class="form-group">
                <input type="text" id="lastname" name="lastname" placeholder=" " required>
                <label for="lastname">Lastname</label>
            </div>

            <div class="form-group">
                <input type="email" id="email" name="email" placeholder=" " required>
                <label for="email">Email</label>
            </div>

            <div class="form-group">
                <input type="password" id="password" name="password" placeholder=" " required>
                <label for="password">Password</label>
            </div>

            <div class="form-group">
                <input type="password" id="confirm_password" name="confirm_password" placeholder=" " required>
                <label for="confirm_password">Confirm Password</label>
            </div>
            
            

            <button type="submit">Register</button>
            <p>Already have an Account? <a href="./login.php">login.</a></p>
        </form>
    </div>
</body>
</html>
