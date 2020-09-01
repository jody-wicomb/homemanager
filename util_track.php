<?php
include("security.php");
include("includes/bheader.php");


?>
<?php include("nav.php"); ?> <br>
<br>
<br>
<br>


<body>

<div class="container">
    <h2>Utility Tracker</h2>


    <!--button
        <a href="expensesfull.php" class="btn btn-info" role="button">View All Expenses</a>

    -->


    <p>Track Utility Usage</p>
    Capture your daily readings here

    <form method="post" action="processutil.php">
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" id="storename" placeholder="Electricty/Water" name="utility">
            </div>
            <div class="col">
                <input type="text" class="form-control" id="item" placeholder="kwh/kl" name="units">
            </div>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>
<p></p>
<div class="container mt-3">
    <h2>Search</h2>
    <p></p>
    <input class="form-control" id="myInput" type="text" placeholder="Search..">
    <br>
</div>
<br>
<br>
<br>
<br>


<?php

include("db.php");

?>

<main id="main">
    <br>


    <div class="container mt-3">
        <div class="table-responsive-sm">
            <table class="table table-bordered">
                <thead class="thead-dark">
            <tr>
                <th>Date Time</th>
                <th>Utility</th>
                <th>Units</th>
                <th>Remove</th>
            </tr>
            </thead>
            <tbody id="myTable">

            <?php
            $query = "select * from utility_tracker order by id desc";
            $result_tasks = mysqli_query($conn, $query);

            while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                    <td><?php echo $row['txndate']; ?></td>
                    <td><?php echo $row['utility']; ?></td>
                    <td><?php echo $row['units']; ?></td>



                    <td><a href="utildelete.php?id=<?php echo $row['id']?>">
                            <img alt = "delete" src="assets/img/deleteme.png" width="20" height="20" ></td>


                </tr>
            <?php } ?>

            </tbody>
        </table>


        <?php
        include("includes/footer.php");


        ?>



