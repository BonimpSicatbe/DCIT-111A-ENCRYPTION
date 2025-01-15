<?php
session_start();
include("../server.php");

// Function to encrypt using Python-style OTP (must match the encryption function)
function stringEncryption($text, $key)
{
    $cipherText = "";
    $cipher = array();

    // Calculate cipher values
    for ($i = 0; $i < strlen($key); $i++) {
        $cipher[$i] = (ord($text[$i]) - ord('A')) + (ord($key[$i]) - ord('A'));
    }

    // Apply modulo 26 if value exceeds 25
    for ($i = 0; $i < strlen($key); $i++) {
        if ($cipher[$i] > 25) {
            $cipher[$i] = $cipher[$i] - 26;
        }
    }

    // Convert to final cipher text
    for ($i = 0; $i < strlen($key); $i++) {
        $x = $cipher[$i] + ord('A');
        $cipherText .= chr($x);
    }

    return $cipherText;
}

// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $connect->real_escape_string($_POST['email']);
    $password = strtoupper($connect->real_escape_string($_POST['password'])); // Convert to uppercase
    $captcha = $connect->real_escape_string($_POST['captcha']);
    $remember = isset($_POST['remember']);

    if (isset($_SESSION['captcha']) && $captcha == $_SESSION['captcha']) {
        // Query to check if the email exists in the database
        $sql = "SELECT * FROM useraccount WHERE email='$email'";
        $result = $connect->query($sql);

        if ($result->num_rows > 0) {
            // Fetch user data
            $user = $result->fetch_assoc();

            // Get the encryption key
            $encryption_key = $user['encryption_key'];

            // Encrypt the provided password with the same key
            $encrypted_password = stringEncryption($password, $encryption_key);

            // Verify the password
            if ($encrypted_password === $user['password']) {
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