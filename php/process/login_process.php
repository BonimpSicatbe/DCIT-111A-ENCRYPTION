<?php
session_start();
include("../server.php");

// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $connect->real_escape_string($_POST['email']);
    $password = $connect->real_escape_string($_POST['password']);
    $captcha = $connect->real_escape_string($_POST['captcha']);
    $remember = isset($_POST['remember']);

    if (isset($_SESSION['captcha']) && $captcha == $_SESSION['captcha']) {
        // Query to check if the email exists in the database
        $sql = "SELECT * FROM useraccount WHERE email='$email'";
        $result = $connect->query($sql);

        if ($result->num_rows > 0) {
            // Fetch user data
            $user = $result->fetch_assoc();

            // Verify the password
            if (password_verify($password, $user['password'])) {
                // Set session variables
                $_SESSION['email'] = $user['email'];
                $_SESSION['username'] = $user['username'];
                $_SESSION['user_id'] = $user['user_id'];

                // Set "Remember Me" cookie if checkbox is checked
                if ($remember) {
                    setcookie("rememberme", $user['email'], time() + (3600), "/"); // Set cookie for 1 hour
                }

                header("Location: ../../index.php");
                exit();
            } else {
                echo '<script>alert("Invalid email or password!");window.location.href="../auth/login.php";</script>';
            }
        } else {
            echo '<script>alert("Invalid email or password!");window.location.href="../auth/login.php";</script>';
        }
    } else {
        echo '<script>alert("Invalid CAPTCHA!");window.location.href="../auth/login.php";</script>';
    }
} else {
    echo '<script>alert("Invalid request method!");window.location.href="../auth/login.php";</script>';
}
?>
