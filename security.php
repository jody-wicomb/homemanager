<?php

session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

?>
<h6>logged in : <?php echo ($_SESSION["username"]);?></h6>
<a class="nav-link" href="logout.php">Log Out</a>
