<?php
include("security.php");
include("db.php");
include("nav.php");
include("includes/bheader.php");


?>



<div class="container mt-3">
    <h2>Search</h2>
    <p></p>
    <input class="form-control" id="myInput" type="text" placeholder="Search..">
    <br>
    <table class="table table-bordered">
        <thead>
    <br>
    <h4>Expenses List</h4>
    <div class="table-responsive-sm">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>Date Time</th>
                <th>Store</th>
                <th>Item</th>
                <th>Category</th>
                <th>Amount(R)</th>

            </tr>
            </thead>
            <tbody id="myTable">


            <?php
            $query = "select * from expense_form order by id desc";
            $result_tasks = mysqli_query($conn, $query);

            while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                    <td><?php echo $row['txndate']; ?></td>
                    <td><?php echo $row['storename']; ?></td>
                    <td><?php echo $row['item']; ?></td>
                    <td><?php echo $row['category']; ?></td>
                    <td>R <?php echo $row['price']; ?></td>




                </tr>
            <?php } ?>

            </tbody>
        </table>

        <p></p>
    </div>

    <script>
        $(document).ready(function(){
            $("#myInput").on("keyup", function() {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function() {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>

</body>
</html>

