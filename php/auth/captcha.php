<?php
session_start();

// Generate a random CAPTCHA code
$captcha_code = substr(md5(rand()), 0, 6);
$_SESSION['captcha'] = $captcha_code;

// Create the CAPTCHA image
header('Content-type: image/png');
$image = imagecreate(120, 40);
$background_color = imagecolorallocate($image, 255, 255, 255);
$text_color = imagecolorallocate($image, 0, 0, 0);
$font_size = 20;
$font = '../../fonts/Poppins-Regular.ttf'; // Ensure the font file is in the same directory

// Check if font file exists
if (!file_exists($font)) {
    die('Font file not found.');
}

// Add the CAPTCHA text to the image
imagettftext($image, $font_size, 0, 10, 30, $text_color, $font, $captcha_code);

// Add some noise
for ($i = 0; $i < 50; $i++) {
    $x = rand(0, 120);
    $y = rand(0, 40);
    $noise_color = imagecolorallocate($image, rand(150, 255), rand(150, 255), rand(150, 255));
    imagesetpixel($image, $x, $y, $noise_color);
}

// Output the image
imagepng($image);
imagedestroy($image);
?>
