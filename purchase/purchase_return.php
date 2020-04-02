<?php
require "../auth/auth.php";
require "../database.php";

if (isset($_POST['subBtn'])) {
 $voucher_no =  $_POST['batch'];
$sql= "DELETE FROM `tran_details` WHERE `batch_no`= $voucher_no";
$conn->query($sql);
$sql= "DELETE FROM `tran_details_reverse` WHERE `batch_no`= $voucher_no";
$conn->query($sql);
if ($conn->affected_rows) {
  $message = "Save supp Successfully!";
} else {
  $mess = "Failled!";
}
 header('refresh:1;../purchase/purchase_return.php');
}
require '../source/top.php';
// $pid = 501000;
// $role_no = $_SESSION['sa_role_no'];
// auth_page($conn, $pid, $role_no);
require '../source/sidebar.php';
require '../source/header.php';
?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> Purchase Return</h1>
    </div>
  </div>
  <table>
    <form method="POST">
      <tr>
        <td>
          <input type="number" name="user_group" id="" class="form-control" placeholder="Input Voucher No">

        </td>
        <td><input type="submit" name="submit" value="submit" class="form-control btn-info"></td>
      </tr>
    </form>
  </table>
  <?php
  if (isset($_POST['submit'])) {
    $user_group = $_POST['user_group'];
  ?>
    <form action="" method="post">
      <table class="table table-hover table-bordered table-sm">
        <thead>
          <tr>
            <th>tran_no</th>
            <th>Voucher No</th>
            <th>tran_date</th>
            <th>gl_acc_code</th>
            <th>dr_amt_loc</th>
            <th>cr_amt_loc</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $sql = "SELECT * FROM `tran_details` where batch_no='$user_group'";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['tran_no'] . '</td>';
            echo '<td>' . $row['batch_no'] . '</td>';
            echo '<td>' . $row['tran_date'] . '</td>';
            echo '<td>' . $row['tran_mode'] . '</td>';
            echo '<td>' . $row['gl_acc_code'] . '</td>';
            echo '<td>' . $row['dr_amt_loc'] . '</td>';
            echo '<td>' . $row['cr_amt_loc'] . '</td>';
           
          
          }
          ?>
        </tbody>
      </table>
  <?php
  $sql = "SELECT * FROM `tran_details` where batch_no='$user_group'";
  $selectQueryResult = $conn->query($sql);
  $row = $selectQueryResult->fetch_array();
 ?>
 <input type="text" name="batch" id="" value="<?php echo $row ['batch_no'];?>" hidden>

      <input type="submit" name="subBtn" value="Reverse Voucher" class="btn btn-info pull-right">
    </form>
  <?php
  } else {
    echo "<h2 style='text-align:center'>Input Our Voucher No</h2>";
  }
  ?>
<?php
          if (!empty($message)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Save Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
          } else {
          }
          if (!empty($mess)) {
            echo '<script type="text/javascript">
          Swal.fire({
              icon: "error",
              title: "Oops...",
              text: "Sorry ' . $_SESSION['username'] . '",
            });
          </script>';
          } else {
          }
          ?>
</main>
<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- table  -->
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
  $('#sampleTable').DataTable();
</script>
<!-- The javascript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
    $("#dashboard").addClass('active');
  });
  $(document).ready(function() {
    $("#501000").addClass('active');
    $("#500000").addClass('active');
    $("#500000").addClass('is-expanded');
  });
</script>
</body>

</html>