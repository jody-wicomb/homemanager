<?php

include("db.php");


?>

<main id="main">
    <br>
    <h4>Income Sources</h4>

    <div class="d-flex flex-column">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>Date Time</th>
                <th>Income Source</th>
                <th>Amount(R)</th>

                <th>Remove</th>
            </tr>
            </thead>
            <tbody>

            <?php
            $query = "select * from income_form order by id desc";
            $result_tasks = mysqli_query($conn, $query);

            while($row = mysqli_fetch_assoc($result_tasks)) { ?>
                <tr>
                    <td><?php echo $row['txndate']; ?></td>
                    <td><?php echo $row['storename']; ?></td>
                    <td><?php echo $row['value']; ?></td>

                    <td><a href="incomedelete.php?id=<?php echo $row['id']?>">
                            <img alt = "delete" src="assets/img/deleteme.png" width="20" height="20" ></td></td>
                </tr>
            <?php } ?>

            </tbody>
        </table>



        </section>
</main>


