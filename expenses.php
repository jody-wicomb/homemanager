<?php
include("db.php");

$query = "select category from class_tbl";
$result_tasks = mysqli_query($conn, $query);



?>
<br xmlns="http://www.w3.org/1999/html">
<br>
<br>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wiki Expenses</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Expenses</h2>



<!--button
    <a href="expensesfull.php" class="btn btn-info" role="button">View All Expenses</a>

-->

    <p>Capture Expenses</p>

    <form method="post" action="process.php">
        <div class="row">
            <div class="col">
            <input type="text" class="form-control" id="storename" placeholder="Store Name" name="storename">
            </div>

            <div class="col">
            <input type="text" class="form-control" id="item" placeholder="Item Name" name="item">
            </div>

            <div class="col">
            <input  class="form-control" list="cat" name="category" id="category"  placeholder="Category">
            <datalist id="cat">


            <?php while($row = mysqli_fetch_assoc($result_tasks)) { ?>
             <option value="<?php echo $row['category']; ?>"> <?php } ?>



                </datalist>
            </div>
            <div class="col">
                <input type="text" class="form-control" id="price" placeholder="R" name="price">
            </div>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>
<br>
<br>
<br>
