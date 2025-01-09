<?php
include "../server.php";

function card_show_times($show_id) {
    global $connect;
    // Fetch showtimes from the database
    $sql = "SELECT * FROM showtimes WHERE show_id = '$show_id' ORDER BY date, time";
    $result = $connect->query($sql);
    
    $showtimes = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $weekday = $row['weekdays'];
            $showtimes[$weekday][] = $row;
        }
    }

    // Array of weekdays to ensure proper order
    $weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    ?>
    
    <!-- show time container -->
    <div class="container">
        <?php foreach ($weekdays as $day): ?>
            <div class="card">
                <h3><?php echo $day; ?></h3>
                <h4><?php echo isset($showtimes[$day][0]['date']) ? (new DateTime($showtimes[$day][0]['date']))->format('F j, Y') : ''; ?></h4>
                <?php if (isset($showtimes[$day])): ?>
                    <?php foreach ($showtimes[$day] as $showtime): ?>
                        <div class="showtime">
                            <a href="javascript:void(0);" class="text-decoration-none" onclick="showTimeOnClickValue('<?php echo $day; ?>', '<?php echo date('g:i A', strtotime($showtime['time'])); ?>', '<?php echo (new DateTime($showtime['date']))->format('F j, Y'); ?>')"><?php echo date('g:i A', strtotime($showtime['time'])); ?></a>
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <p class="no-performance">No Performances</p>
                <?php endif; ?>
            </div>
        <?php endforeach; ?>
    </div>
    
    <?php
}

function buttonOverlay($show_id) {
    global $connect;
    // Fetch showtimes from the database
    $show_times_sql = "SELECT * FROM showtimes WHERE show_id = '$show_id' ORDER BY date, time";
    $result = $connect->query($show_times_sql);
    
    $show_sql = "SELECT * FROM shows WHERE show_id = '$show_id'";
    $show_result = $connect->query($show_sql);
    $show = $show_result->fetch_assoc();
    
    $showtimes = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $weekday = $row['weekdays'];
            $showtimes[$weekday][] = $row;
        }
    }

    // Array of weekdays to ensure proper order
    $weekdays = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
    ?>
    
    <!-- show time container -->
    <div class="buttonOverlay-container">
        <h2>Show Times</h2>
        <?php foreach ($weekdays as $day): ?>
            <div class="buttonOverlay-card">
                <h4><?php echo $day; ?></h4>
                <div class="showtime-container">
                    <?php if (isset($showtimes[$day])): ?>
                        <?php foreach ($showtimes[$day] as $showtime): ?>
                            <div class="showtime">
                            <a href="javascript:void(0);" class="text-decoration-none" onclick="showTimeOnClickValue('<?php echo $day; ?>', '<?php echo date('g:i A', strtotime($showtime['time'])); ?>', '<?php echo (new DateTime($showtime['date']))->format('F j, Y'); ?>')"><?php echo date('g:i A', strtotime($showtime['time'])); ?></a>
                            </div>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <p class="no-performance">No Performances</p>
                    <?php endif; ?>
                </div>

            </div>
        <?php endforeach; ?>
    </div>

    <hr>
    
    <!-- Ticket Summary -->
    <form action="../process/ticket_process.php" method="post" class="ticket-summary">
        <h2>Ticket Summary</h2>

        <input type="hidden" name="show_id" id="hidden-show-id" value="<?php echo $show_id; ?>">

        <div class="show-time">
            <h3>Show Title:</h3>
            <input type="hidden" name="show_title" id="hidden-show-title" value="<?php echo $show['title']; ?>">
            <p><?php echo $show['title']; ?></p>
        </div>
        <div class="show-time">
            <h3>Show Date:</h3>
            <input type="hidden" name="show_date" id="hidden-show-date" value="-">
            <p id="display-selected-show-date">-</p>
        </div>
        <div class="show-time">
            <h3>Show Day:</h3>
            <input type="hidden" name="show_day" id="hidden-show-day" value="-">
            <p id="display-selected-show-day">-</p>
        </div>
        <div class="show-time">
            <h3>Show Time:</h3>
            <input type="hidden" name="show_time" id="hidden-show-time" value="-">
            <p id="display-selected-show-time-value">-</p>
        </div>
        <div class="show-time">
            <h3>Ticket Price:</h3>
            <input type="hidden" name="ticket_price" id="hidden-ticket-price" value="<?php echo $show['ticket_price']; ?>">
            <p id="ticket-price" data-price="<?php echo $show['ticket_price']; ?>">$<?php echo $show['ticket_price']; ?></p>
        </div>
        <div class="show-time">
            <h3>Ticket Quantity:</h3>
            <div id="ticket-quantity-container" class="quantity-selector">
                <button type="button" onclick="decrementQuantity()"><i class="fa fa-minus"></i></button>
                <input type="text" name="ticket_quantity" id="ticket-quantity" value="1" readonly>
                <button type="button" onclick="incrementQuantity()"><i class="fa fa-plus"></i></button>
            </div>
        </div>
        <div class="show-time">
            <h3>Total:</h3>
            <input type="hidden" name="total" id="hidden-total" value="<?php echo $show['ticket_price']; ?>">
            <p id="total">$<?php echo $show['ticket_price']; ?></p>
        </div>
        <button type="submit" class="btn btn-confirm" name="book-ticket">Confirm</button>
    </form>
    <?php
}
?>
