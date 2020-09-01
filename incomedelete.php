<?php

include("db.php");

if(isset($_GET['id'])) {
  $id = $_GET['id'];
  $query = "delete from income_form WHERE id = $id";
  $result = mysqli_query($conn, $query);
  if(!$result) {
    die("Query Failed.");
  }

  $_SESSION['message'] = 'Removed Successfully';
  $_SESSION['message_type'] = 'danger';
  header('Location: home.php');
}

?>
