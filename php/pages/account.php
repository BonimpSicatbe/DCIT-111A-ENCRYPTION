<?php 

session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: php/auth/login.php');
    exit();
}

include("../server.php");
include("../process/general_process.php");

include("../process/account_process.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account</title>

    <link rel="stylesheet" href="../../css/account.css">

    <link rel="stylesheet" href="../../css/navbar.css">
</head>
<body>
    <!-- Navbar -->
    <?php include "./navbar.php"; ?>

    <!-- Account Section -->
    <div class="account-section">
        <?php 
        $sql = "SELECT * FROM useraccount WHERE user_id = ?";
        $stmt = $connect->prepare($sql);
        $stmt->bind_param("i", $_SESSION['user_id']);
        $stmt->execute();
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()) {
            ?>

            <div class="account-container">
                <!-- Edit Form -->
                <form action="../process/account_process.php" method="post" onsubmit="return confirm('Are you sure you want to update your account information?');">
                    <input type="hidden" name="user_id" value="<?php echo htmlspecialchars($row['user_id']); ?>">

                    <!-- Firstname -->
                    <div class="label-section">
                        <label for="firstname">First Name:</label>
                        <input type="text" id="firstname" name="firstname" value="<?php echo htmlspecialchars($row['firstname']); ?>" readonly data-original="<?php echo htmlspecialchars($row['firstname']); ?>" disabled>
                    </div>

                    <!-- Middlename -->
                    <div class="label-section">
                        <label for="middlename">Middle Name:</label>
                        <input type="text" id="middlename" name="middlename" value="<?php echo htmlspecialchars($row['middlename']); ?>" readonly data-original="<?php echo htmlspecialchars($row['middlename']); ?>" placeholder="Middlename" disabled>
                    </div>

                    <!-- Lastname -->
                    <div class="label-section">
                        <label for="lastname">Last Name:</label>
                        <input type="text" id="lastname" name="lastname" value="<?php echo htmlspecialchars($row['lastname']); ?>" readonly data-original="<?php echo htmlspecialchars($row['lastname']); ?>" disabled>
                    </div>

                    <!-- Username -->
                    <div class="label-section">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" value="<?php echo htmlspecialchars($row['username']); ?>" readonly data-original="<?php echo htmlspecialchars($row['username']); ?>" disabled>
                    </div>

                    <!-- Email -->
                    <div class="label-section">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" value="<?php echo htmlspecialchars($row['email']); ?>" readonly data-original="<?php echo htmlspecialchars($row['email']); ?>" disabled>
                    </div>

                    <!-- Password -->
                    <div class="label-section">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" placeholder="Enter new password" readonly disabled>
                    </div>

                    <button class="account-buttons" type="button" id="edit-button" onclick="enableEditing();">Edit Account</button>
                    <button class="account-buttons" type="submit" id="update-button" style="display: none;">Update Account</button>
                    <button class="account-buttons" type="button" id="cancel-button" style="display: none;" onclick="cancelEditing();">Cancel</button>
                    <button class="account-buttons logout" type="button" onclick="confirmLogout()">Logout</button>
                </form>
            </div>
            <?php
        }
        $stmt->close();
        ?>
    </div>

    <script src="../../js/account.js"></script>
</body>
</html>