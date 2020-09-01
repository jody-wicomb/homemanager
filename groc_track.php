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
    <h2>Grocery Tracker</h2>


    <!--button
        <a href="expensesfull.php" class="btn btn-info" role="button">View All Expenses</a>

    -->


    <p>Grocery List Tracker</p>
    Capture each grocery item here:

    <form method="post" action="grocessutil.php">
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" id="storename" placeholder="storename" name="storename">
            </div>
            <div class="col">
                <input type="text" class="form-control" id="item" placeholder="item" name="item">
            </div>
            <div class="col">
                <input type="text" class="form-control" id="price" placeholder="price" name="price">
            </div>
            <div class="col">
                <input type="text" class="form-control" id="slipnumber" placeholder="slipnumber" name="slipnumber">
            </div>
        </div>
        <button type="submit" class="btn btn-primary mt-3">Submit</button>
    </form>
</div>
<div class="container mt-3">
    <h2>Search</h2>
    <p></p>
    <input class="form-control" id="myInput" type="text" placeholder="Search..">
    <br>
</div>
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
                <th>Store</th>
                <th>Item</th>
                <th>Price</th>
                <th>SlipNumber</th>
                <th>Remove</th>
            </tr>
            </thead>
            <tbody id="myTable">

            <?php
            $query = "select * from grocery_tracker order by id desc";
            $result_tasks = mysqli_query($conn, $query);

            while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                    <td><?php echo $row['txndate']; ?></td>
                    <td><?php echo $row['storename']; ?></td>
                    <td><?php echo $row['item']; ?></td>
                    <td><?php echo $row['price']; ?></td>
                    <td><?php echo $row['slipnumber']; ?></td>



                    <td><a href="grocerydelete.php?id=<?php echo $row['id']?>">
                            <img alt = "delete" src="assets/img/deleteme.png" width="20" height="20" ></td>


                </tr>
            <?php } ?>

            </tbody>
        </table>





        <?php
        include("includes/footer.php");


        ?>

