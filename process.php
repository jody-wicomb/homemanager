<?php
include("dbtest.php");
//process.php
if ($_SERVER["REQUEST_METHOD"] == "POST") {//Check it is coming from a form
    $u_storename = $_POST["storename"]; //set PHP variables like this so we can use them anywhere in code below
    $u_item = $_POST["item"];
    $u_category = $_POST["category"];
    $u_price = $_POST["price"];

    #echo $u_price;
    #echo $u_category;
    #echo $u_item;
    #echo $u_storename;


    $sql = "insert into expense_form values (null,'$u_storename','$u_item','$u_category','$u_price',now())";


    if (mysqli_query($conn, $sql)) {
        header('Location: home.php');
        #echo $sql;
    } else {
        echo "update failed";
        #echo $sql;
    }
    mysqli_close($conn);

}
