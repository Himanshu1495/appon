<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];
$old_pass = $_POST['oldpass'];
$new_pass = $_POST['confpass'];
$valid_flag = false;

$result = mysqli_query($connect_mini,"SELECT password FROM minister_db WHERE email='$email'");
if (mysqli_affected_rows($connect_mini)==1){
	while ($row=mysqli_fetch_assoc($result)) {
		$check = $row['password'];
		if (password_verify($old_pass,$check)) {
			$valid_flag = true;
		}
	}
}
if ($valid_flag==true) {
	$new = password_hash($new_pass,PASSWORD_DEFAULT);
	$result = mysqli_query($connect_mini,"UPDATE `minister_db` SET `password`='$new',`verified`='1' WHERE `email`='$email'");
		echo "done";
	
}

if ($valid_flag==false) {
		echo "invalid";
	}	
?>