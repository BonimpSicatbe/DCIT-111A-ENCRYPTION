function confirmDelete(ticket_id) {
    if (confirm("Are you sure you want to delete this ticket?")) {
        document.getElementById('ticket_id').value = ticket_id;
        document.getElementById('deleteForm').submit();
    }
}
