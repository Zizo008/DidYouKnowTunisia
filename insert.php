<?php
if($_SERVER["REQUEST_METHOD"] == "POST"){
include "connect.php";
$message=$_POST["message"];
$req="INSERT INTO facts (Fact_ID,Fact_Info) VALUES (NULL,'$message');";
if (mysqli_query($conn, $req)) {
    echo "<br><h3>New record created successfully</h3>";
} else {
    echo "Error: " . $req . "<br>" . mysqli_error($conn);
}
}
?>