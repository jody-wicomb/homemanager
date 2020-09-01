<?php
include("includes/bheader.php");
include("db.php");

$query = " select  timestamp ,ploss from home_account where substring(curdate(),1,7) = substring(timestamp,1,7) order by timestamp desc limit 1;";
$result_tasks = mysqli_query($conn, $query);

while($row = mysqli_fetch_assoc($result_tasks)) { ?>



<body>

<div class="container">
    <h3></h3>
    <p></p>

    <div class="toast" data-autohide="false">
        <div class="toast-header">
            <strong class="mr-auto text-primary">Available</strong>
            <small class="text-muted"></small>
            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
        </div>
        <div class="toast-body">

            <td><?php echo $row['timestamp']; ?> : </td>
            <td>R <?php echo $row['ploss']; ?> </td>
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

