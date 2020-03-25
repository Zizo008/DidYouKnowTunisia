<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
    <title>Did You Know Tunisia? - Modify</title>
  </head>
  <body>
  <?php
include "connect.php";
$desc=$_GET['desc'];
$id = $_GET['id'];
?>
  <center><a href="index.php"><img src="tun.png"  width="300" height="200"></a></center>
<div class="quote-box">
<form action="admin.php" method="post">
   <textarea name="message" class="form-control" ><?php echo $desc?></textarea><br>
   <input type="submit" class="btn btn-primary" style="margin: 5px;" value="Submit"><a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
</form>
<?php
if($_SERVER["REQUEST_METHOD"] == "post"){
	$desc=$_GET["message"];
$query3="UPDATE `facts` SET `Fact_Info` = '$desc' WHERE `facts`.`Fact_ID` = $id;";
if (!mysqli_query($conn, $query3)) {
    echo "Error: " . $req . "<br>" . mysqli_error($conn);
}
}
?>
</div>
 <div class="footer"> By Aziz Ben Hadj Yahia</a></div>
  </body>
</html>