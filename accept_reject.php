<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$app_id = $_GET['app_id'];
$email = $_GET['email'];
$val = $_GET['value'];

if ($val==0) {
	$reason = $_GET['reason'];
	$from = 'apponucoe@gmail.com';
	$to = $email;
	$subject = 'Appointment Rejected : AppON';
	$body = 'Your appointment was rejected due to '.$reason."\n".
	'From,'."\n".
	'Your mates at AppON';
	$headers = 'From: '.$from. "\r\n" .
   'Reply-To: '.$from. "\r\n";	
   	mail($to, $subject, $body, $headers);
}
if ($val==1) {
	mysqli_query($connect,"UPDATE request SET accepted='1' WHERE email='$email'")
	echo "done";
}

?>