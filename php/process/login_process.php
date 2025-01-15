<?php
session_start();
include("../server.php");

// Function to convert a letter to its corresponding index (A=0, B=1, ..., Z=25)
function letterToIndex($char) {
    return ord(strtoupper($char)) - ord('A');
}

// Function to convert an index to its corresponding letter
function indexToLetter($index) {
    return chr(($index % 26) + ord('A'));
}

// Function to encrypt a message using the alphabetic OTP
function alphabeticEncrypt($message, $key) {
    $cipher = '';
    $message = strtoupper($message);
    $key = strtoupper($key);
    $keyLength = strlen($key);

    for ($i = 0; $i < strlen($message); $i++) {
        if (ctype_alpha($message[$i])) {
            $messageIndex = letterToIndex($message[$i]);
            $keyIndex = letterToIndex($key[$i % $keyLength]);
            $cipher .= indexToLetter($messageIndex + $keyIndex);
        } else {
            $cipher .= $message[$i];
        }
    }
    return $cipher;
}

// Function to decrypt a cipher using the alphabetic OTP
function alphabeticDecrypt($cipher, $key) {
    $message = '';
    $cipher = strtoupper($cipher);
    $key = strtoupper($key);
    $keyLength = strlen($key);

    for ($i = 0; $i < strlen($cipher); $i++) {
        if (ctype_alpha($cipher[$i])) {
            $cipherIndex = letterToIndex($cipher[$i]);
            $keyIndex = letterToIndex($key[$i % $keyLength]);
            $message .= indexToLetter($cipherIndex - $keyIndex + 26);
        } else {
            $message .= $cipher[$i];
        }
    }
    return $message;
}

// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $connect->real_escape_string($_POST['email']);
    $password = strtoupper($connect->real_escape_string($_POST['password']));
    $key = strtoupper($connect->real_escape_string($_POST['key']));

    // Query to check if the email exists
    $sql = "SELECT * FROM useraccount WHERE email='$email'";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        $stored_cipher = $user['password'];
        $stored_key = strtoupper($user['encryption_key']);

        // Decrypt the stored password
        $decrypted_password = alphabeticDecrypt($stored_cipher, $stored_key);

        if ($decrypted_password === $password) {
            $_SESSION['email'] = $user['email'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['user_id'] = $user['user_id'];
            header("Location: ../../index.php");
            exit();
        } else {
            echo '<script>alert("Invalid password or key!");window.location.href="../auth/login.php";</script>';
        }
    } else {
        echo '<script>alert("Invalid email or password!");window.location.href="../auth/login.php";</script>';
    }
}
?>
