<?php
include("includes/bheader.php");
include("db.php");

$query = "select substring(txndate,1,7) as Month ,round(sum(price),2) as MTotal from expense_form 
where substring(curdate(),1,7) = substring(txndate,1,7)
 group by substring(txndate,1,7)";
$result_tasks = mysqli_query($conn, $query);

while($row = mysqli_fetch_assoc($result_tasks)) { ?>



        <body>

        <div class="container">
            <h3></h3>
            <p></p>

            <div class="toast" data-autohide="false">
                <div class="toast-header">
                    <strong class="mr-auto text-primary">Running Total Expenses</strong>
                    <small class="text-muted"></small>
                    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
                </div>
                <div class="toast-body">

                    <td><?php echo $row['Month']; ?> : </td>
                    <td>R <?php echo $row['MTotal']; ?> </td>
                </div>
            </div>
        </div>


        <?php } ?>
        <script>
            $(document).ready(function(){
                $('.toast').toast('show');
            });
        </script>

        </body>
        </html>

