<?php 
require_once("../database.php");
//code check suppomer Name
if(!empty($_POST["acc_head"])) {
$result = mysqli_query($conn,"SELECT count(acc_head) FROM `gl_acc_code` WHERE acc_head='" . $_POST["acc_head"] . "'");
$row = mysqli_fetch_row($result);
$acc_head = $row[0];
if($acc_head>0) echo "<h5 style='color:red'> Account Name Already Exit .</h5>";
else echo "<h5 style='color:green'> Account Name Available.</h5>";
}
