<?php



?>
<br>
<br>
<br>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wiki Incomes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Incomes</h2>
    <p>Capture Income</p>
    <form method="post" action="capture.php">
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" id="Source" placeholder="Source" name="source">
            </div>
            <div class="col">
                <input type="text" class="form-control" id="value" placeholder="R" name="value">
            </div>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>
<br>
<br>
<br>