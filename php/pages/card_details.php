<?php 
session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: php/auth/login.php');
    exit();
}

include("../server.php");
include("../process/general_process.php");
include("../process/card_details_process.php");

if (isset($_GET['id'])) {
    $show_id = $_GET['id'];
    $sql = "SELECT * FROM shows WHERE show_id = $_GET[id]";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        $show = $result->fetch_assoc();
    } else {
        echo "Show not found.";
        exit;
    }
} else {
    echo "No show ID provided.";
    exit;
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $show['title']; ?></title>
    
    <link rel="stylesheet" href="../../css/navbar.css">
    <link rel="stylesheet" href="../../css/card_details.css">
    <link rel="stylesheet" href="../../css/card.css">
</head>
<body>
    <!-- Navbar -->
    <?php include "./navbar.php"; ?>

    <!-- Show Detail -->
    <div class="show-detail">
        <img id="show-detail-bg" src="../../img/poster_landscape/<?php echo $show['poster_landscape']; ?>" alt="<?php echo $show['title']; ?>">
        <div class="show-detail-description">
            <div class="show-detail-description-content">
                <img class="show-detail-description-img" src="../../img/poster_portrait/<?php echo $show['poster_portrait']; ?>" alt="">
                <div class="header">
                    <h1><?php echo $show['title']; ?></h1>
                    <p><?php echo $show['about']; ?></p>
                    <hr>
                    <div class="buy-ticket-section">
                        <div class="left">
                            <h6>Tickets starting at</h6>
                            <h2>$<?php echo $show['ticket_price'] ?></h2> <!-- Show Price -->
                        </div>
                        <div class="right">
                            <button type="button" class="" onclick="buttonExpandOverlay('noScroll')">
                                <i class="fa fa-ticket"></i>
                                <span>Buy Tickets</span>
                            </button>
                        </div>

                        <!-- Button Overlay -->
                        <div class="buttonOverlay" id="noScroll">
                            <div class="buttonOverlay-dialog">
                                <div class="buttonOverlay-content">
                                    <div class="buttonOverlay-header">
                                        <h1 class="buttonOverlay-title" id="noScrollLabel">Buy Tickets: <?php echo $show['title']; ?></h1>
                                        <span class="close" onclick="closeButtonOverlay('noScroll')"><i class="fa fa-xmark"></i></span>
                                    </div>

                                    <hr>

                                    <div class="buttonOverlay-body">
                                        <div class="buttonOverlay-body-content">
                                            <?php buttonOverlay($show['show_id']); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Show Times Section -->
    <div class="show-detail-section">

        <!-- Show Times -->
        <div class="show-detail-container">
            <h1><?php echo $show['title']; ?> Show Times</h1>

            <div class="show-time-container">
                <?php card_show_times($show['show_id']); ?>
            </div>
            
        </div>

        <hr style="width: 75%;">
        
        <!-- About -->
        <div class="show-detail-contents">
            <div class="left">
                <h1>About <?php echo $show['title']; ?> on Broadway</h1>
            </div>
            <div class="right">
                <p><?php echo $show['about']; ?></p>
            </div>
        </div>

        <hr style="width: 75%;">
        
        <!-- Venue -->
        <div class="show-detail-contents">
            <div class="left">
                <h1>Venue</h1>
            </div>
            <div class="right">
                <p><?php 
                $venue = "SELECT * FROM venues WHERE venue_id = '$show[venue_id]';";
                $venue_result = $connect -> query($venue);
                $show_venue = $venue_result -> fetch_assoc();

                ?>

                    <h1><?php echo $show_venue['name'] ?></h1>
                    <h3><?php echo $show_venue['address'] ?></h3>
                    <p><?php echo $show_venue['city'] . ", " . $show_venue['state'] . ", " . $show_venue['zip_code'] ?></p>
                
                <?php
                
                ?></p>
            </div>
        </div>

        <hr style="width: 75%;">
        
        <!-- Story -->
        <div class="show-detail-contents">
            <div class="left">  
                <h1>Story</h1>
            </div>
            <div class="right">
                <p><?php echo $show['story']; ?></p>
            </div>
        </div>
            
        <hr style="width: 75%;">

        <!-- Cast & Character -->
        <div class="show-detail-contents">
            <div class="left">
                <h1>Cast & Character</h1>
            </div>
            <div class="right cast-column">
                <?php

                    $cast = "SELECT * FROM cast WHERE show_id = '$show[show_id]';";
                    $cast_result = $connect -> query($cast);

                    while ($cast = $cast_result -> fetch_assoc()) {

                        ?>

                            <div class="person">
                                <h3><?php echo $cast['actor_name'] ?></h3>
                                <p><?php echo $cast['character_name'] ?></p>
                            </div>

                        <?php
                        
                    }
                    
                ?>
            
            <!-- </div> -->
            </div>
        </div>
            
    </div>

    <script src="../../js/card_details.js"></script>
</body>
</html>


