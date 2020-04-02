<?php 
require_once("../database.php");
//code check email perosonal
if(!empty($_POST["emailid"])) {
$result = mysqli_query($conn,"SELECT count(email_personal) FROM sm_hr_emp WHERE email_personal='" . $_POST["emailid"] . "'");
$row = mysqli_fetch_row($result);
$email_count = $row[0];
if($email_count>0) echo "<span style='color:red'> Email Already Exit .</span>";
else echo "<span style='color:green'> Email Available.</span>";
}
// email offical
if(!empty($_POST["pemailid"])) {
	$result = mysqli_query($conn,"SELECT count(email_official) FROM sm_hr_emp WHERE email_official='" . $_POST["pemailid"] . "'");
	$row = mysqli_fetch_row($result);
	$email_count = $row[0];
	if($email_count>0) echo "<span style='color:red'> Email Already Exit .</span>";
	else echo "<span style='color:green'> Email Available.</span>";
	}
//Code check user name
if(!empty($_POST["userid"])) {
	$result = mysqli_query($conn,"SELECT count(emp_id) FROM sm_hr_emp WHERE emp_id='" . $_POST["userid"] . "'");
	$row = mysqli_fetch_row($result);
	$user_count = $row[0];
	if($user_count>0) echo "<span style='color:red'> User name already exit .</span>";
	else echo "<span style='color:green'> User name Available.</span>";
}
// ref email check 
if(!empty($_POST["refemailid"])) {
	$result = mysqli_query($conn,"SELECT count(*) FROM fund_ref_info WHERE email='" . $_POST["refemailid"] . "'");
	$row = mysqli_fetch_row($result);
	$email_count = $row[0];
	if($email_count>0) echo "<span style='color:red'> Email Already Exit .</span>";
	else echo "<span style='color:green'> Email Available.</span>";
	}
// ref id check 
if(!empty($_POST["refid"])) {
	$result = mysqli_query($conn,"SELECT count(*) FROM fund_ref_info WHERE reffered_id='" . $_POST["refid"] . "'");
	$row = mysqli_fetch_row($result);
	$id_count = $row[0];
	if($id_count>0) echo "<span style='color:red'> Reffered ID Already Exit .</span>";
	else echo "<span style='color:green'> Reffered ID Available.</span>";
	}
//code check email
if(!empty($_POST["memberemailid"])) {
	$result = mysqli_query($conn,"SELECT count(*) FROM fund_member WHERE email='" . $_POST["memberemailid"] . "'");
	$row = mysqli_fetch_row($result);
	$email_count = $row[0];
	if($email_count>0) echo "<span style='color:red'> Email Already Exit .</span>";
	else echo "<span style='color:green'> Email Available.</span>";
	}