<?php 

include("../server.php");
include("../process/general_process.php");
include("../process/ticket_process.php");
include("../process/index_process.php");

if (!isset($_SESSION['user_id'])) {
    header('Location: php/auth/login.php');
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tickets</title>

    <link rel="stylesheet" href="../../css/navbar.css">
    <link rel="stylesheet" href="../../css/tickets.css">
    <link rel="stylesheet" href="../../css/index.css">
</head>
<body>
    <!-- Navbar -->
    <?php include "./navbar.php"; ?>

    <img class="bg" src="../../img/login-bg.webp" alt="">

    <div class="ticket-list">
        <h1 class="text-light">Ticket Lists</h1>
        <div class="ticket-list-section">
            <?php 
            $user_id = $_SESSION['user_id'];
            $sql = "SELECT * FROM tickets WHERE user_id = $user_id";
            $result = $connect->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    $show_sql = "SELECT * FROM shows WHERE show_id = " . $row['show_id'];
                    $show_result = $connect->query($show_sql);
                    $show = $show_result->fetch_assoc();
                    
                    if (!empty($show)) {
                        ?>
                        <div class="ticket-card">
                            <div class="ticket-card-content ticket-card-content-left">
                                <img src="../../img/poster_portrait/<?php echo $show['poster_portrait']; ?>" alt="">
                            </div>
                            <div class="ticket-card-content ticket-card-content-middle">
                                <div class="ticket-row">
                                    <h2>Title:</h2>
                                    <p><?php echo $show['title']; ?></p>
                                </div>
                                <div class="ticket-row">
                                    <h2>Schedule:</h2>
                                    <p><?php echo $row['show_date'] . " - " . $row['show_day'] . " - " . $row['show_time']; ?></p>
                                </div>
                                <div class="ticket-row">
                                    <h2>Quantity:</h2>
                                    <p><?php echo $row['ticket_quantity']; ?></p>
                                </div>
                                <div class="ticket-row">
                                    <h2>Total:</h2>
                                    <p>$<?php echo $row['total']; ?></p>
                                </div>
                            </div>
                            <div class="ticket-card-content ticket-card-content-right">
                                <button type="button" onclick="confirmDelete(<?php echo $row['ticket_id']; ?>)"><i class="fa fa-trash"></i></button>
                            </div>
                        </div>
                        <?php
                    }
                }
            } else {
                echo "<h2 class='text-light'>There are no tickets listed.</h2>";
            }
            ?>
        </div>
    </div>

    <!-- Hidden Form for Deleting Ticket -->
    <form id="deleteForm" method="POST" action="">
        <input type="hidden" name="ticket_id" id="ticket_id">
        <input type="hidden" name="ticket-delete" value="1">
    </form>

    <script src="../../js/tickets.js"></script>
</body>
</html>
