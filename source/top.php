
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SMS</title>
  <!-- Main CSS-->
  <link rel="stylesheet" type="text/css" href="../css/main.css">
  <!-- additional css  -->
  <link rel="stylesheet" href="../css/style.css">
  <!-- hoiliday style  -->
  <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- sweet alart  -->
  <link rel="stylesheet" href="../css/jquery.toast.css">
  <!-- <script src="../js/sweetalert/sweetalert.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/8.11.8/sweetalert2.all.min.js"></script>
<?php
function auth_page ($conn, $pid, $role_no){
  $sql = "select menu_no from sm_role_dtl where role_no=$role_no and menu_no=$pid and active_stat=1";
   $res = mysqli_query($conn, $sql);
   $row = mysqli_fetch_assoc($res);
   if ($row['menu_no']==$pid){
   }else{  
      header("location:../index.php");
     exit('Authorization not found!!');
    }
} 
?>
