<?php
header('Access-Control-Allow-Origin: *');
include "connection.php";

$email = $_GET['email'];

$result = mysqli_query($connect,"SELECT * FROM request WHERE email='$email' AND accepted='1'");
if (mysqli_affected_rows($connect)==1) {
	while ($row=mysqli_fetch_assoc($result)) {
		$mini_id = $row['mini_id'];

	}
	$minister_check = mysqli_query($connect,"SELECT * FROM minister_db WHERE id='$mini_id'");
	if (mysqli_affected_rows($connect)==1) {
		while ($res=mysqli_fetch_assoc($minister_check)) {
			$mini_name = $res['name'];
			$mini_location = $res['location'];
			$mini_position = $res['position'];
			$mini_rating = $res['rating'];
			$mini_total = $res['total'];
			$mini_resolved = $res['resolved'];
			$mini_pending = $res['pending'];
			$mini_photo = $res['photo'];
		}
		$cen = mysqli_query($connect,"SELECT * FROM centers WHERE location='$mini_location'");
		if (mysqli_affected_rows($connect)==1) {
			while ($c=mysqli_fetch_assoc($cen)) {
				$center_location = $c['location'];
				$center_address = $c['address'];
				$center_name = $c['name'];
			}
		}
	}
	echo "done";

}
else{
	echo "no";
}
?>