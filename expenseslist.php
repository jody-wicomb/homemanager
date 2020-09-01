<?php

include("dbtest.php");

?>

<main id="main">
    <br>
    <h4>Expenses List</h4>
    <div class="d-flex flex-column">
        <?php include("navexp.php"); ?> <br>
         <table class="table table-bordered">
         <!--   <table id="dtVerticalScrollExample" class="table table-striped table-bordered table-sm" cellspacing="0"  width="100%"> -->
            <thead class="thead-dark">
            <tr>
                <th>Date Time</th>
                <th>Store</th>
                <th>Item</th>
                <th>Category</th>
                <th>Amount(R)</th>
                <th>Remove</th>
            </tr>
            </thead>
            <tbody>

            <?php
            $query = "select * from expense_form order by id desc limit 10";
            $result_tasks = mysqli_query($conn, $query);

            while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                    <td><?php echo $row['txndate']; ?></td>
                    <td><?php echo $row['storename']; ?></td>
                    <td><?php echo $row['item']; ?></td>
                    <td><?php echo $row['category']; ?></td>
                    <td><?php echo $row['price']; ?></td>

                    <td><a href="expensedelete.php?id=<?php echo $row['id']?>">
                            <img alt = "delete" src="assets/img/deleteme.png" width="20" height="20" ></td>


                </tr>
            <?php } ?>

            </tbody>
        </table>
        <script>
            $(document).ready(function () {
                $('#dtVerticalScrollExample').DataTable({
                    "scrollY": "200px",
                    "scrollCollapse": true,
                });
                $('.dataTables_length').addClass('bs-select');
            });

        </script>
        </section>

</main>

