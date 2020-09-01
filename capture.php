<?php
include("db.php");
//process.php
if ($_SERVER["REQUEST_METHOD"] == "POST") {//Check it is coming from a form
    $u_source = $_POST["source"]; //set PHP variables like this so we can use them anywhere in code below
    $u_value = $_POST["value"];


    $sql = "insert into income_form values (null,'$u_source','$u_value',now())";


    if (mysqli_query($conn, $sql)) {
        header('Location: home.php');
        #echo $sql;
    } else {
        echo "update failed";
        #echo $sql;
    }
    mysqli_close($conn);

}
