<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";
$email = $_GET['email'];
$flag = false;
$result = mysqli_query($connect,"SELECT otp FROM citizen_otp WHERE email='$email'");
if (mysqli_affected_rows($connect)==1) {
	# code...
	while ($row=mysqli_fetch_assoc($result)) {
		# code...
		$otp=$row['otp'];
	}
}
$from = 'apponucoe@gmail.com';
$to = $email;
$subject = 'One time password for login : AppON';

$body = 'Your one time password is : '.$otp."\n".
	'From,'."\n".
	'Your mates at AppON';
$headers = 'From: '.$from. "\r\n" .
   'Reply-To: '.$from. "\r\n";
   mail($to, $subject, $body, $headers);		
		echo "done";
?>
