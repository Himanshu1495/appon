<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];
$json_data = array();

$result = mysqli_query($connect,"SELECT * FROM request WHERE email='$email' AND accepted='1'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($result)) {
		$mini_id = $row['mini_id'];

	}
	$minister_check = mysqli_query($connect,"SELECT * FROM ministers WHERE id='$mini_id' AND level='1'");
	if (mysqli_affected_rows($connect)==1) {
		while ($res=mysqli_fetch_assoc($minister_check)) {
			$mini_name = $res['name'];
			$mini_location = $res['location'];
			$mini_position = $res['position'];
			$mini_rating = $res['rating'];
			$mini_total = $res['total'];
			$mini_resolved = $res['resolved'];
			$mini_pending = $res['pending'];
			$mini_photo = $res['photo_link'];
		}
		$cen = mysqli_query($connect,"SELECT * FROM centers WHERE location='$mini_location'");
		if (mysqli_affected_rows($connect)==1) {
			while ($c=mysqli_fetch_assoc($cen)) {
				$center_location = $c['location'];
				$center_address = $c['address'];
			}
		}
		$timedate = mysqli_query($connect,"SELECT * FROM citizen_appointment WHERE email='$email'");
		if (mysqli_affected_rows($connect)==1) {
			while ($row=mysqli_fetch_assoc($timedate)) {
				$time = $row['time_slot'];
				$date = $row['app_date'];
			}
		}
		$json_data=array(
			"id" => $mini_id,
			"name" => $mini_name,
			"location" => $mini_location,
			"position" => $mini_position,
			"rating" => $mini_rating,
			"total" => $mini_total,
			"resolved" => $mini_resolved,
			"pending" => $mini_pending,
			"photo" => $mini_photo,
			"centerloc" => $center_location,
			"address" => $center_address,
			"time" => $time,
			"date" => $date,
			"there" => 1,
		);	
	}
}else{
	$json_data=array("there"=>0);	
}
echo json_encode($json_data);

?>