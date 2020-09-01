<?php
include("db.php");
//process.php
if ($_SERVER["REQUEST_METHOD"] == "POST") {//Check it is coming from a form
    $u_storename = $_POST["storename"]; //set PHP variables like this so we can use them anywhere in code below
    $u_item = $_POST["item"];
    $u_price = $_POST["price"];
    $u_slipnumber = $_POST["slipnumber"];



    $sql = "insert into grocery_tracker values (null,'$u_storename','$u_item',$u_price,'$u_slipnumber',now())";


    if (mysqli_query($conn, $sql)) {
        header('Location: groc_track.php');
        #echo $sql;
    } else {
        echo "update failed";
        echo $sql;
    }
    mysqli_close($conn);

}

