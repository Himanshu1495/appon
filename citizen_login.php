<?php
	header("Access-Control-Allow-Origin: *");

	if(!isset($_POST["uname"])&& !isset($_POST["password"])){ echo "Nothing is set";}
	else{//check input or if it is set 
		if(empty($_POST["uname"	]) && empty($_POST["password"])) echo "Empty";//to check empty
		else{
			$email = $_POST["uname"];// username
			$password = $_POST["password"];// password
			//login check
			include "config.php";// include connection 
			$loginCheckQry = "select * from `citizen_data` where `uname` ='".$uname."' and `password` = '".$password."'";//check query
			if(!$loginCheck = mysqli_query($con,$loginCheckQry)){// get query data and fire on connection
				echo "".mysqli_error($con);//display error
				mysqli_close($con);// close connection
			}
			else if(mysqli_num_rows($loginCheck)==0) {//check number of rows in login check
				mysqli_close($con);//close connection
				echo 'Did you had correct credentials? Try again.';
			}
			else{
				//session start
 				$getUser = mysqli_fetch_assoc($loginCheck);//to fetch the all rows in array  
				mysqli_close($con);
				session_start();
				$_SESSION["id"] = $getUser["uname"];// set a session
				//$_SESSION["email"] = $getUser["email"];
				echo $_SESSION["id"];
			}
		}	
	}
?>