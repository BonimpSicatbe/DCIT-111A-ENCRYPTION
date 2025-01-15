<?php
session_start();
include("../server.php");

// Function to generate a random key for the alphabetic OTP
function generateRandomKey($length)
{
    $key = '';
    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for ($i = 0; $i < $length; $i++) {
        $key .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $key;
}

// Function to convert a letter to its corresponding index (A=0, B=1, ..., Z=25)
function letterToIndex($char)
{
    return ord(strtoupper($char)) - ord('A');
}

// Function to convert an index to its corresponding letter
function indexToLetter($index)
{
    return chr(($index % 26) + ord('A'));
}

// Function to encrypt a message using the alphabetic OTP
function alphabeticEncrypt($message, $key)
{
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

// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstname = strtoupper($connect->real_escape_string($_POST['firstname']));
    $lastname = strtoupper($connect->real_escape_string($_POST['lastname']));
    $email = $connect->real_escape_string($_POST['email']);
    $password = strtoupper($connect->real_escape_string($_POST['password']));
    $confirm_password = strtoupper($connect->real_escape_string($_POST['confirm_password']));
    $username = $firstname . " " . $lastname;

    // Validate input
    if ($password !== $confirm_password) {
        echo '<script>alert("Passwords do not match!");window.location.href="../auth/register.php";</script>';
        exit();
    }

    // Check if email or username already exists
    $sql = "SELECT * FROM useraccount WHERE email='$email' OR username='$username'";
    $result = $connect->query($sql);
    if ($result->num_rows > 0) {
        echo '<script>alert("Email or username already exists!");window.location.href="../auth/register.php";</script>';
        exit();
    }

    // Generate a random key for encryption
    $key = generateRandomKey(strlen($password));

    // Encrypt the password using the random key
    $encrypted_password = alphabeticEncrypt($password, $key);

    // Store the encrypted password and key
    $sql = "INSERT INTO useraccount (firstname, lastname, username, email, password, encryption_key) 
            VALUES ('$firstname', '$lastname', '$username', '$email', '$encrypted_password', '$key')";

    if ($connect->query($sql) === TRUE) {
        echo '<script>alert("Registration successful!");window.location.href="../auth/login.php";</script>';
    } else {
        echo '<script>alert("Error: ' . $sql . '<br>' . $connect->error . '");window.location.href="../auth/register.php";</script>';
    }

    $connect->close();
}
?>