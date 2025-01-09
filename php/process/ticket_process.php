<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include("../server.php"); // Ensure database connection is included

    if (isset($_POST['ticket-delete'])) {
        $ticket_id = $_POST['ticket_id'];
        $delete_ticket_record = "DELETE FROM tickets WHERE ticket_id = ?";
        $stmt = $connect->prepare($delete_ticket_record);
        $stmt->bind_param("i", $ticket_id);

        if ($stmt->execute()) {
            echo "<script>alert('Ticket deleted successfully!'); window.location.href = '../pages/tickets.php'</script>";
        } else {
            echo "<script>alert('Error deleting ticket: " . $connect->error . "');</script>";
        }

        $stmt->close();
    }

    if (isset($_POST['book-ticket'])) {
        $user_id = $_SESSION['user_id'];
        $show_id = $_POST['show_id'];
        $show_title = $_POST['show_title'];
        $show_date = $_POST['show_date'];
        $show_day = $_POST['show_day'];
        $show_time = $_POST['show_time'];
        $ticket_price = $_POST['ticket_price'];
        $ticket_quantity = $_POST['ticket_quantity'];
        $total = $_POST['total'];

        $sql = "INSERT INTO tickets (show_id, user_id, show_title, show_day, show_date, show_time, ticket_price, ticket_quantity, total)
                VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt = $connect->prepare($sql);
        $stmt->bind_param("iissssddd", $show_id, $user_id, $show_title, $show_day, $show_date, $show_time, $ticket_price, $ticket_quantity, $total);

        if ($stmt->execute()) {
            echo "<script>
                    alert('Ticket booking confirmed!');
                    window.location.href = '../pages/card_details.php?id=$show_id';
                  </script>";
        } else {
            echo "Error: " . $sql . "<br>" . $connect->error;
        }

        $stmt->close();
    }
}
?>
