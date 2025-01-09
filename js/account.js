function confirmUpdate() {
    return confirm('Are you sure you want to update your account information?');
}

function confirmLogout() {
    if (confirm('Are you sure you want to logout?')) {
        window.location.href = "../auth/logout.php";
    }
}

function enableEditing() {
    var inputs = document.querySelectorAll('.account-section input');
    inputs.forEach(function(input) {
        input.removeAttribute('readonly');
        input.removeAttribute('disabled');
    });
    document.getElementById('edit-button').style.display = 'none';
    document.getElementById('update-button').style.display = 'inline-block';
    document.getElementById('cancel-button').style.display = 'inline-block';
}

function cancelEditing() {
    var inputs = document.querySelectorAll('.account-section input');
    inputs.forEach(function(input) {
        input.setAttribute('readonly', true);
        input.setAttribute('disabled', true);
        input.value = input.getAttribute('data-original');
    });
    document.getElementById('edit-button').style.display = 'inline-block';
    document.getElementById('update-button').style.display = 'none';
    document.getElementById('cancel-button').style.display = 'none';
}