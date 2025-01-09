<?php 

session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: php/auth/login.php');
    exit();
}

include("../server.php");
include("../process/general_process.php");

include("../process/show_process.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shows</title>

    <link rel="stylesheet" href="../../css/navbar.css">

    <link rel="stylesheet" href="../../css/shows.css">
</head>
<body>
    <!-- Navbar -->
    <?php include "./navbar.php"; ?>

    <!-- Hero Section -->
    <div class="carousel">
        <div class="carousel-inner" id="carousel-inner">
            <?php 
                $sql = "SELECT * FROM shows WHERE ratings > 4.75";
                $result = $connect->query($sql);
                $first = true;
                
                while ($row = $result->fetch_assoc()) {
                    $activeClass = $first ? 'active' : '';
                    $first = false;
                    ?>
                        <div class="carousel-item <?php echo $activeClass; ?>">
                            <div class="bg-overlay"></div>
                            <img src="../../img/poster_landscape/<?php echo $row['poster_landscape']; ?>" class="d-block w-100" alt="<?php echo $row['title']; ?>">
                            <div class="carousel-caption">
                                
                            </div>
                        </div>
                    <?php
                }
            ?>
        </div>
        <button class="carousel-control-prev" id="prevBtn"><i class="fa-solid fa-chevron-left"></i></button>
        <button class="carousel-control-next" id="nextBtn"><i class="fa-solid fa-chevron-right"></i></button>
    </div>

    <!-- Navbar Sub Section -->
    <div class="main-section">
        <h1>Show Lists</h1>
        <ul class="nav" id="pills-tab">
            <li class="nav-item">
                <a class="nav-link active" id="pills-popular-tab" data-target="#popular">
                    Popular
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-musical-tab" data-target="#musical">
                    Musical
                </a>
            </li>   
            <li class="nav-item">
                <a class="nav-link" id="pills-straight-play-tab" data-target="#straight-play">
                    Straight Play
                </a>
            </li> 
            <li class="nav-item">
                <a class="nav-link" id="pills-revue-tab" data-target="#revue">
                    Revue
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-dance-show-tab" data-target="#dance-show">
                    Dance Show
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="pills-special-show-tab" data-target="#special-show">
                    Special Show
                </a>
            </li>
        </ul>

        <div class="tab-content" id="pills-tabContent">
            <!-- Popular -->
            <div class="tab-pane text-light active" id="popular">
                <!-- Show Lists Content Start -->
                <div class="show-lists-section container-large container-xxl container-ultra">
                    <div class="card-container">
                        <?php show_popular_list(); ?>
                    </div>
                </div>
                <!-- Show Lists Content Start -->
            </div>

            <!-- Musical -->
            <div class="tab-pane text-light" id="musical">
                <!-- Show Lists Content Start -->
                <div class="show-lists-section container-large container-xxl container-ultra">
                    <div class="card-container">
                        <?php show_category_list("M"); ?>
                    </div>
                </div>
                <!-- Show Lists Content Start -->
            </div>

            <!-- Straight Play -->
            <div class="tab-pane text-light" id="straight-play">
                <!-- Show Lists Content Start -->
                <div class="show-lists-section container-large container-xxl container-ultra">
                    <div class="header">
                        <h1 class="">Straight Play</h1>
                    </div>
                    <div class="card-container">
                        <?php show_category_list("P"); ?>
                    </div>
                </div>
                <!-- Show Lists Content Start -->
            </div>

            <!-- Revue -->
            <div class="tab-pane text-light" id="revue">
                <!-- Show Lists Content Start -->
                <div class="show-lists-section container-large container-xxl container-ultra">
                    <div class="card-container">
                        <?php show_category_list("R"); ?>
                    </div>
                </div>
                <!-- Show Lists Content Start -->
            </div>
            
            <!-- Dance Show -->
            <div class="tab-pane text-light" id="dance-show">
                <!-- Show Lists Content Start -->
                <div class="show-lists-section container-large container-xxl container-ultra">
                    <div class="card-container">
                        <?php show_category_list("D"); ?>
                    </div>
                </div>
                <!-- Show Lists Content Start -->
            </div>

            <!-- Special Show -->
            <div class="tab-pane text-light" id="special-show">
                <!-- Show Lists Content Start -->
                <div class="show-lists-section container-large container-xxl container-ultra">
                    <div class="card-container">
                        <?php show_category_list("S"); ?>
                    </div>
                </div>
                <!-- Show Lists Content Start -->
            </div>
        </div>
    </div>
    <script src="../../js/show.js"></script>
</body>
</html>