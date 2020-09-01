<?php
include("db.php");
//process.php
if ($_SERVER["REQUEST_METHOD"] == "POST") {//Check it is coming from a form
    $u_utility = $_POST["utility"]; //set PHP variables like this so we can use them anywhere in code below
    $u_units = $_POST["units"];



    $sql = "insert into utility_tracker values (null,'$u_utility','$u_units',now())";


    if (mysqli_query($conn, $sql)) {
        header('Location: util_track.php');
        echo $sql;
    } else {
        echo "update failed";
        #echo $sql;
    }
    mysqli_close($conn);

}
