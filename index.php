<?php 

session_start(); // start new session

if (!isset($_SESSION['user_id']) && isset($_COOKIE['rememberme'])) {

    // auto-login using the cookie
    $email = $_COOKIE['rememberme'];
    include("php/server.php");

    // query to get user data
    $sql = "SELECT * FROM useraccount WHERE email='$email'";
    $result = $connect->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc(); // fetch user data if account exists
        $_SESSION['email'] = $user['email'];
        $_SESSION['username'] = $user['username'];
        $_SESSION['user_id'] = $user['user_id'];
    }
}

// if user not logged in, redirect user to login page
if (!isset($_SESSION['user_id'])) { 
    header('Location: php/auth/login.php');
    exit();
}

include("php/server.php");
include("php/process/general_process.php");
include("php/process/index_process.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>

    <link rel="stylesheet" href="css/navbar.css">

    <link rel="stylesheet" href="css/card.css">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <ul>
            <li class="logo">
                <a href="index.php" class="text-decoration-none text-dark">Broadway</a>
            </li>
            <div class="menu">
                <li>
                    <a href="index.php" class="text-decoration-none text-dark">
                        <span>Home</span>
                    </a>
                </li>
                <li>
                    <a href="php/pages/shows.php" class="text-decoration-none text-dark">
                        <span>Shows</span>
                    </a>
                </li>
                <li>
                    <a href="php/pages/tickets.php" class="text-decoration-none text-dark">
                        <span>Tickets</span>
                    </a>
                </li>
            </div>
            <li class="account"><a href="php/pages/account.php" class="text-decoration-none text-dark"><i class="fa-sharp fa-solid fa-user-circle"></i></a></li>
        </ul>
    </div>

    <!-- Hero Section -->
    <div class="carousel">
        <div class="carousel-inner" id="carousel-inner">
            <?php 
                $sql = "SELECT * FROM shows WHERE ratings > 4.75";
                $result = $connect->query($sql);
                $first = true;
                
                // loop the results and display each item
                while ($row = $result->fetch_assoc()) {
                    $activeClass = $first ? 'active' : '';
                    $first = false;
                    ?>
                        <div class="carousel-item <?php echo $activeClass; ?>">
                            <div class="bg-overlay"></div>
                            <img src="img/poster_landscape/<?php echo $row['poster_landscape']; ?>" class="d-block w-100" alt="<?php echo $row['title']; ?>">
                            <div class="carousel-caption">
                                <h3><?php echo $row['title']; ?></h3>
                                <p><?php echo $row['about']; ?></p>
                            </div>
                        </div>
                    <?php
                }
            ?>
        </div>
        <button class="carousel-control-prev" id="prevBtn"><i class="fa-solid fa-chevron-left"></i></button>
        <button class="carousel-control-next" id="nextBtn"><i class="fa-solid fa-chevron-right"></i></button>
    </div>
    <!-- indicators -->
    <div class="carousel-indicators-container">
        <div class="carousel-indicators" id="indicators">
            <div class="carousel-indicators-content">
                <?php 
                $result->data_seek(0); // Reset result pointer
                $first = true;
                $index = 0;
                while ($row = $result->fetch_assoc()) {
                    // the active class is added to the first item to be shown first in the carousel                    
                    $activeClass = $first ? 'active' : '';
                    // set the $first to false so that next item gets the active class
                    $first = false;
                    ?>
                    <button data-slide-to="<?php echo $index++; ?>" class="<?php echo $activeClass; ?>">
                        <img src="img/poster_landscape/<?php echo $row['poster_landscape']; ?>" alt="">
                    </button>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>

    <!-- Lists Section -->
    <div class="lists-section">
        <!-- Popular Shows -->
        <div class="ps-musical ls-section">
            <div class="ls-section-header">
                <h1>Popular Show</h1>
                <a href="php/pages/shows.php" clss="text-decoration-none">
                    <span>See More</span>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- Display Cards -->
            <div class="card-section">  
                <?php popular_show() ?>
            </div>
        </div>

        <!-- Musical -->
        <div class="ps-musical ls-section">
            <div class="ls-section-header">
                <h1>Musical</h1>
                <a href="php/pages/shows.php" class="text-decoration-none">
                    <span>See More</span>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- Display Cards -->
            <div class="card-section">  
                <?php display_show('M') ?>
            </div>
        </div>
        
        <!-- Revue -->
        <div class="ps-revue ls-section">
            <div class="ls-section-header">
                <h1>Revue</h1>
                <a href="php/pages/shows.php" class="text-decoration-none">
                    <span>See More</span>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- Display Cards -->
            <div class="card-section">
                <?php display_show('R') ?>
            </div>
        </div>

        <!-- Straight Play -->
        <div class="ps-straight-play ls-section">
            <div class="ls-section-header">
                <h1>Straight Play</h1>
                <a href="php/pages/shows.php" clas="text-decoration-none">
                    <span>See More</span>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- Display Cards -->
            <div class="card-section">
                <?php display_show('P') ?>
            </div>
        </div>
        
        <!-- Dance Show -->
        <div class="ps-dance-show ls-section">
            <div class="ls-section-header">
                <h1>Dance Show</h1>
                <a href="php/pages/shows.php" lass="text-decoration-none">
                    <span>See More</span>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- Display Cards -->
            <div class="card-section">
                <?php display_show('D') ?>
            </div>
        </div>

        
        <!-- Special Show -->
        <div class="ps-special-show ls-section">
            <div class="ls-section-header">
                <h1>Special Show</h1>
                <a href="php/pages/shows.php" clss="text-decoration-none">
                    <span>See More</span>
                    <i class="fa fa-chevron-right"></i>
                </a>
            </div>
            <!-- Display Cards -->
            <div class="card-section">
                <?php display_show('S') ?>
            </div>
        </div>
    </div>
    
    <script src="js/index.js"></script>
</body>
</html>
