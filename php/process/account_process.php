<?php
include("../server.php");

// Function to generate a random key for the alphabetic OTP
function generateRandomKey($length) {
    $key = '';
    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    for ($i = 0; $i < $length; $i++) {
        $key .= $characters[rand(0, strlen($characters) - 1)];
    }
    return $key;
}

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

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = $_POST['user_id'];
    $firstname = strtoupper($_POST['firstname']);
    $middlename = strtoupper($_POST['middlename']);
    $lastname = strtoupper($_POST['lastname']);
    $username = strtoupper($_POST['username']);
    $email = $_POST['email'];
    $password = strtoupper($_POST['password']);

    // Prepare the SQL statement
    if (!empty($password)) {
        // Generate a new encryption key and encrypt the password
        $key = generateRandomKey(strlen($password));
        $encrypted_password = alphabeticEncrypt($password, $key);

        // Update all fields, including the password and encryption key
        $sql = "UPDATE useraccount 
                SET firstname = ?, middlename = ?, lastname = ?, username = ?, email = ?, password = ?, encryption_key = ? 
                WHERE user_id = ?";
        $stmt = $connect->prepare($sql);
        $stmt->bind_param("sssssssi", $firstname, $middlename, $lastname, $username, $email, $encrypted_password, $key, $user_id);
    } else {
        // Update fields except password and encryption key
        $sql = "UPDATE useraccount 
                SET firstname = ?, middlename = ?, lastname = ?, username = ?, email = ? 
                WHERE user_id = ?";
        $stmt = $connect->prepare($sql);
        $stmt->bind_param("sssssi", $firstname, $middlename, $lastname, $username, $email, $user_id);
    }

    // Execute the statement
    if ($stmt->execute()) {
        echo "<script>alert('Account updated successfully!'); window.location.href = '../pages/account.php';</script>";
    } else {
        echo "<script>alert('Error updating account: " . $stmt->error . "'); window.location.href = '../pages/account.php';</script>";
    }

    $stmt->close();
    $connect->close();
}
?>
