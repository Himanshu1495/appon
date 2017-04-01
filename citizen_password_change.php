<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$pass = $_POST['confpass'];
$email = $_GET['email'];

$password = password_hash($pass,PASSWORD_DEFAULT);

mysqli_query($connect,"UPDATE citizen_data SET password='$password' WHERE email='$email'");
echo "done";

?>