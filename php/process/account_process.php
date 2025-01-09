<?php

include("../server.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $user_id = $_POST['user_id'];
    $firstname = $_POST['firstname'];
    $middlename = $_POST['middlename'];
    $lastname = $_POST['lastname'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Check if password needs to be updated
    if (!empty($password)) {
        $password_hash = password_hash($password, PASSWORD_DEFAULT);
        $sql = "UPDATE useraccount SET firstname = ?, middlename = ?, lastname = ?, username = ?, email = ?, password = ? WHERE user_id = ?";
        $stmt = $connect->prepare($sql);
        $stmt->bind_param("ssssssi", $firstname, $middlename, $lastname, $username, $email, $password_hash, $user_id);
    } else {
        $sql = "UPDATE useraccount SET firstname = ?, middlename = ?, lastname = ?, username = ?, email = ? WHERE user_id = ?";
        $stmt = $connect->prepare($sql);
        $stmt->bind_param("sssssi", $firstname, $middlename, $lastname, $username, $email, $user_id); 
    }

    if ($stmt->execute()) {
        echo "<script>alert('Account updated successfully!'); window.location.href = '../pages/account.php';</script>";
    } else {
        echo "Error: " . $sql . "<br>" . $connect->error;
    }

    $stmt->close();
    $connect->close();

}
?>