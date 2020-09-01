<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

include("includes/bheader.php");
?>

    <!DOCTYPE html>
    <html lang="en">

<body>
<div class="page-header">
    <h6>Hi, <b><?php echo ($_SESSION["username"]); ?></b>. Welcome to our site.</h6>
</div>
<p>
    <a href="reset-password.php" class="btn btn-outline-success btn-sm" >Reset Your Password</a>
    <a href="logout.php" class="btn btn-outline-danger btn-sm">Sign Out</a>
</p>
</body>
    </html>
<?php
