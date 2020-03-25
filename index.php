<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
    <title>Did You Know Tunisia?</title>
  </head>
  <body>
  
  <center><a href="index.php"><img src="tun.png"  width="300" height="200"></a></center>
<div class="quote-box">

  <?php
 include "connect.php";
 
 include "display.php";
  ?>
  <form action="index.php"><button type="submit" class="btn btn-danger btn-lg" id="b1">New fact!</button><button class="btn btn-primary btn-lg" id="b2"><a href="log.php">Add your own!</a> </button> </form>
    

</div>

  <div class="footer"> By Aziz Ben Hadj Yahia</a></div>
  </body>
</html>