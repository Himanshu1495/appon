<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];
$reason = $_POST['reason'];
$agenda = $_POST['agenda'];
$location = $_POST['location'];
$no_of_vis = $_GET['no_of_vis'];

$location_check = mysqli_query($connect,"SELECT id FROM ministers WHERE location='$location' AND level='0'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($location_check)) {
		$cen_id = $row['id'];
	}
}

mysqli_query($connect,"INSERT INTO request(mini_id,email,reason,agenda,location,no_of_vis,accepted) VALUES($cen_id,$email,$reason,$agenda,$location,$no_of_vis,'0')");
echo "done";


?>