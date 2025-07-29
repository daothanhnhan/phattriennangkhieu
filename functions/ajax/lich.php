<?php 
	include_once dirname(__FILE__) . "/../database.php";
	$type = $_GET['type'];
	$teacher = $_GET['teacher'];
	$hour = $_GET['hour'];
	$day = $_GET['day'];//echo $hour;

	$sql = "SELECT * FROM hour WHERE teacher_id = $teacher AND name = '$hour'";
	$result = mysqli_query($conn_vn, $sql);
	$row = mysqli_fetch_assoc($result);
	$hour_id = $row['id'];//echo $hour_id;

	$sql = "UPDATE day SET $day = $type WHERE hour_id = $hour_id";//echo $sql;
	$result = mysqli_query($conn_vn, $sql);
?>