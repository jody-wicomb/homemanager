<?php include("security.php"); ?>

<!DOCTYPE html>
<html lang="en">

<body>


<div class="container-fluid">
    <?php include("nav.php"); ?>
  <h3>Management Board</h3>

    <h6>Income & Expenses</h6>
    <!-- The cards -->
    <div class="row">
        <div class="col-sm-offset-3"><?php include("exp_query.php"); ?></div>
        <div class="col-sm-offset-3"><?php include("exp_diff.php"); ?></div>
        <div class="col-sm-offset-3"><?php include("utility_available.php"); ?></div>
    </div>

    <p></p>
    <br>
    <br>
    <!-- The displaying all the data-->
  <div class="row">
    <div class="col-sm-4" style="background-color:ghostwhite;"><?php include("income.php"); ?></div>
    <div class="col-sm-8" style="background-color:ghostwhite;"><?php include("incomelist.php"); ?></div>

    <div class="col-sm-4" style="background-color:ghostwhite;"><?php include("expenses.php"); ?></div>
    <div class="col-sm-8" style="background-color:ghostwhite;"><?php include("expenseslist.php"); ?></div>

      <div class="col-sm-4" style="background-color:ghostwhite;"></div>
      <div class="col-sm-8" style="background-color:ghostwhite;"></div>

  </div>
</div>







</body>
</html>

