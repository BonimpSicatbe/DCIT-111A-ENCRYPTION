document.addEventListener('DOMContentLoaded', function() {
    ticketPrice = parseFloat(document.getElementById("ticket-price").getAttribute("data-price")); // Set ticket price from PHP value
});

function buttonExpandOverlay(scrollId) {
    document.getElementById(scrollId).style.display = "flex";
    document.body.classList.add('no-scroll');
}

function closeButtonOverlay(scrollId) {
    document.getElementById(scrollId).style.display = "none";
    document.body.classList.remove('no-scroll');
}

// Prevent closing the modal when clicking outside of it
window.onclick = function(event) {
    const modals = document.querySelectorAll('.buttonOverlay');
    modals.forEach(modal => {
        if (event.target == modal) {
            event.stopPropagation();
        }
    });
}

function showTimeOnClickValue(day, time, date) {
    document.getElementById("display-selected-show-day").textContent = day;
    document.getElementById("display-selected-show-time-value").textContent = time;
    document.getElementById("display-selected-show-date").textContent = date;

    document.getElementById("hidden-show-day").value = day;
    document.getElementById("hidden-show-time").value = time;
    document.getElementById("hidden-show-date").value = date;
    
    document.getElementById("ticket-quantity-container").style.display = "flex"; // Ensure the quantity container is visible
    updateTotal(); // Update total when show time is selected
}

function incrementQuantity() {
    let quantityInput = document.getElementById("ticket-quantity");
    let quantity = parseInt(quantityInput.value);
    quantityInput.value = quantity + 1;
    updateTotal(); // Update total when quantity changes
}

function decrementQuantity() {
    let quantityInput = document.getElementById("ticket-quantity");
    let quantity = parseInt(quantityInput.value);
    if (quantity > 1) {
        quantityInput.value = quantity - 1;
        updateTotal(); // Update total when quantity changes
    }
}

function updateTotal() {
    let quantity = parseInt(document.getElementById("ticket-quantity").value);
    let total = ticketPrice * quantity;
    document.getElementById("total").textContent = `$${total.toFixed(2)}`;
    document.getElementById("hidden-total").value = total.toFixed(2);
}