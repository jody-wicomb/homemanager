<?php
include("includes/bheader.php");
include("db.php");

$query = "select txndate,units from utility_tracker order by id desc limit 1;";
$result_tasks = mysqli_query($conn, $query);

while($row = mysqli_fetch_assoc($result_tasks)) { ?>



<body>

<div class="container">
    <h3></h3>
    <p></p>

    <div class="toast" data-autohide="false">
        <div class="toast-header">
            <strong class="mr-auto text-primary">Electricity</strong>
            <small class="text-muted"></small>
            <button type="button" class="ml-2 mb-1 close" data-dismiss="toast">&times;</button>
        </div>
        <div class="toast-body">

            <td><?php echo $row['txndate']; ?> : </td>
            <td>Units <?php echo $row['units']; ?> </td>
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

