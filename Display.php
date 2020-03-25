<?php
//Display	
$sql = "SELECT Fact_ID, Fact_Info FROM facts ORDER BY RAND() LIMIT 1;";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)){
        echo " <h1>Did You Know This About Tunisia?</h1> " . $row["Fact_Info"]. "<br><br>";
    }
} else {
    echo "0 results";
} 
?>