<?php

function popular_show() {
    global $connect;
    $sql = "SELECT * FROM shows WHERE ratings > 4.5";
    $result = $connect->query($sql);

    while ($row = $result->fetch_assoc()) {
        // Query to get showtimes specific to the current show
        $showtime_sql = "SELECT * FROM showtimes WHERE show_id = " . $row['show_id'];
        $showtime_result = $connect->query($showtime_sql);
        $showtime = $showtime_result->fetch_assoc();
        $current_date = date('l'); // Get the current day of the week

        ?>
        <div class="card">
            <a href="php/pages/card_details.php?id=<?php echo $row['show_id']; ?>">
                <img src="img/poster_portrait/<?php echo $row['poster_portrait']; ?>" alt="<?php echo $row['title']; ?>">
                <div class="card-overlay">
                    <h2 class="card-overlay-padding"><?php echo $row['title']; ?></h2>
                    <?php 
                    while ($showtime = $showtime_result->fetch_assoc()) {
                        if ($current_date == $showtime['weekdays']) {
                            echo '<p class="card-overlay-padding">' . (new DateTime($showtime['date']))->format('F j, Y') . '</p>';
                            echo '<p class="card-overlay-padding">' . $showtime['weekdays'] . '</p>';
                            echo '<p class="card-overlay-padding"' . date('g:i A', strtotime($showtime['time'])) . '</p>';
                            break; // Exit the loop once a matching weekday is found
                        }
                    }
                    ?>

                    <p class="card-overlay-padding price" style="margin-bottom: 20px;">Ticket Price: $<?php echo $row['ticket_price']; ?></p>
                </div>
            </a>
        </div>
        <?php
    }
}

?>

