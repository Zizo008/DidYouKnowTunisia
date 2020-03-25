<?php
include "connect.php";

$id = $_GET['id'];

	$query2= "DELETE FROM Facts WHERE Fact_ID=$id;";
if (mysqli_query($conn, $query2)) {
   mysqli_close($conn);
    header('Location: admin.php'); 
	
} else {
    echo "Error: " . $query2 . "<br>" . mysqli_error($conn);
}
?>