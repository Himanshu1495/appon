<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_POST['uemail'];
$password = $_POST['pass'];
$flag = false;
$check_flag = false;
$res = mysqli_query($connect,"SELECT id FROM citizen_data WHERE email='$email' AND verified='1'");
if (mysqli_num_rows($res)==1) {
	$check_flag = true;
}
if ($check_flag==false) {
	echo "otp";

}
if ($check_flag==true) {
	$check = mysqli_query($connect,"SELECT password FROM citizen_data WHERE email='$email' AND verified='1'");
	if (mysqli_affected_rows($connect)==1) {
		while ($row=mysqli_fetch_assoc($check)) {
			$to_validate = $row['password'];
		}
		if (password_verify($password,$to_validate)) {
			$result = mysqli_query($connect,"SELECT * FROM citizen_data WHERE email='$email' AND password='$to_validate' AND verified='1'");
			if (mysqli_num_rows($result)==1) {
				$flag = true;
				echo "done";							
			}			
		}		
	}

	if ($flag==false) {
		echo "invalid";
	}

}
		
			 
?>