<?php
session_start();
include("../server.php");

// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstname = $connect->real_escape_string($_POST['firstname']);
    $lastname = $connect->real_escape_string($_POST['lastname']);
    $email = $connect->real_escape_string($_POST['email']);
    $password = $connect->real_escape_string($_POST['password']);
    $confirm_password = $connect->real_escape_string($_POST['confirm_password']);
    $username = $firstname . " " . $lastname;

    // Server-side validation
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

    // Hash the password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert the new user into the database
    $sql = "INSERT INTO useraccount (firstname, lastname, username, email, password) VALUES ('$firstname', '$lastname', '$username', '$email', '$hashed_password')";

    if ($connect->query($sql) === TRUE) {
        echo '<script>alert("Registration successful!");window.location.href="../auth/login.php";</script>';
    } else {
        echo '<script>alert("Error: ' . $sql . '<br>' . $connect->error . '");window.location.href="../auth/register.php";</script>';
    }

    $connect->close();
}
?>
