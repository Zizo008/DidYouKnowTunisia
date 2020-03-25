<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: log.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
    <title>Did You Know Tunisia? - Add</title>
  </head>
  <body>
  
  <center><a href="index.php"><img src="tun.png"  width="300" height="200"></a></center>
<div class="quote-box">
    <div class="page-header">
        <h1>Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Add your fact below.</h1>
    </div>
   <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
   <textarea name="message" class="form-control" >Insert your fact here.</textarea><br>
   <input type="submit" class="btn btn-primary" style="margin: 5px;" value="Submit"><a href="logout.php" class="btn btn-danger">Sign Out of Your Account</a>
</form>

<?php
include "insert.php";
?>
</div>

  <div class="footer"> By Aziz Ben Hadj Yahia</a></div>
  </body>
</html>