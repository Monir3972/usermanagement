<?php 
	if($_SERVER['REQUEST_METHOD'] == "POST") {
		include('../db.php');
	    $name =  $_POST['name'];
	    $email =  $_POST['email'];
	    $contact =  $_POST['contact'];
	    $country =  $_POST['country'];
	    $division =  $_POST['division'];
	    $district =  $_POST['district'];
	    $upzilla =  $_POST['upzilla'];
	    $post_office =  $_POST['post_office'];
	    $word =  $_POST['word'];
	    $village =  $_POST['village'];
	    $sql = "INSERT INTO `user_infos` (`name`, `email`, `contact`, `country_id`, `division_id`, `district_id`, `upzilla_id`,`post_id`,`word_id`, `village_id`) VALUES ('$name', '$email','$contact','$country', '$division','$district', '$upzilla', '$post_office', '$word','$village')";
	    $stmt = $con->prepare($sql);
		 // execute the query
		$stmt->execute();
	   echo $stmt->rowCount() . " records UPDATED successfully";

}
?>