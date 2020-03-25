<?php
//Connection
$conn=mysqli_connect("localhost","root","","tunisia");
if (!$conn) 
	{
		die("Connection failed: " . mysqli_connect_error());
	}
?>