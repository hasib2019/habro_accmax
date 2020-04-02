<?php
require "../auth/auth.php";
require "../database.php";
require '../source/top.php';
$pid = 501000;
$role_no = $_SESSION['sa_role_no'];
auth_page($conn, $pid, $role_no);
require '../source/sidebar.php';
require '../source/header.php';
?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> User Create</h1>
    </div>
  </div>
  <table>
    <form method="POST">
      <tr>
        <td>
          <select name="user_group" class="form-control select2" style="width: 200px" required>
            <option value="">-Select User Group-</option>
            <?php
            $selectQuery = 'SELECT * FROM `code_master` where hardcode="USERG" AND softcode>0';
            $selectQueryResult = $conn->query($selectQuery);
            if ($selectQueryResult->num_rows) {
              while ($row = $selectQueryResult->fetch_assoc()) {
            ?>
            <?php
                echo '<option value="' . $row['softcode'] . '">' . $row['description'] . '</option>';
              }
            }
            ?>
          </select>
        </td>
        <td><input type="submit" name="submit" value="submit" class="form-control btn-info"></td>
      </tr>
    </form>
  </table>
  <?php
  if (isset($_POST['submit'])) {
    $user_group = $_POST['user_group'];
    // echo $user_group;
    // exit;
    if ($user_group == '0100') {
  ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Employee No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $sql = "SELECT emp_no, f_name, l_name, employee_image FROM `sm_hr_emp`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['emp_no'] . '</td>';
            echo '<td>' . $row['f_name'] . '</td>';
            echo '<td>' . $row['l_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?id=' . $row['emp_no'] . '&&user_group=' . $user_group . '&&name=' . str_replace(' ', '', $row['f_name']) . '&&image=' . $row['employee_image'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } elseif ($user_group == '0200') {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Customer Id</th>
            <th>Customer Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT `id`, `cust_name`,`image` FROM `cust_info`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['id'] . '</td>';
            echo '<td>' . $row['cust_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?id=' . $row['id'] . '&&user_group=' . $user_group . '&&name=' . str_replace(' ', '', $row['cust_name']) . '&&image=' . $row['image'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } elseif ($user_group == '0300') {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Supplier Id</th>
            <th>Supplier Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT `id`, `supp_name`, `image` FROM `supp_info`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['id'] . '</td>';
            echo '<td>' . $row['supp_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?id=' . $row['id'] . '&&user_group=' . $user_group . '&&name=' . str_replace(' ', '', $row['supp_name']) . '&&image=' . $row['image'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } elseif ($user_group == '0400') {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Member No</th>
            <th>Full Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT `member_id`, `full_name`, `image` FROM `fund_member`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['member_id'] . '</td>';
            echo '<td>' . $row['full_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?id=' . $row['member_id'] . '&&user_group=' . $user_group . '&&name=' . str_replace(' ', '', $row['full_name']) . '&&image=' . $row['image'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } elseif ($user_group == '0500') {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Employee No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT emp_no, f_name, l_name FROM `sm_hr_emp`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['emp_no'] . '</td>';
            echo '<td>' . $row['f_name'] . '</td>';
            echo '<td>' . $row['l_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?emp_no=' . $row['emp_no'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } elseif ($user_group == '0600') {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Employee No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT emp_no, f_name, l_name FROM `sm_hr_emp`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['emp_no'] . '</td>';
            echo '<td>' . $row['f_name'] . '</td>';
            echo '<td>' . $row['l_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?emp_no=' . $row['emp_no'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } elseif ($user_group == '0700') {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Employee No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT emp_no, f_name, l_name FROM `sm_hr_emp`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['emp_no'] . '</td>';
            echo '<td>' . $row['f_name'] . '</td>';
            echo '<td>' . $row['l_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?emp_no=' . $row['emp_no'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    } else {
    ?>
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th>Employee No</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>action</th>
          </tr>
        </thead>
        <tbody>
          <?php
          //  $q = intval($_GET['q']);
          $sql = "SELECT emp_no, f_name, l_name FROM `sm_hr_emp`";
          $query = $conn->query($sql);
          while ($row = $query->fetch_assoc()) {
            echo '<tr>';
            echo '<td>' . $row['emp_no'] . '</td>';
            echo '<td>' . $row['f_name'] . '</td>';
            echo '<td>' . $row['l_name'] . '</td>';
            echo '<td> <a  type="button" class="btn btn-xs btn-warning"  href="user_password_change.php?emp_no=' . $row['emp_no'] . '"> Create User </a></td>';
            echo '</tr>';
          }
          ?>
        </tbody>
      </table>
    <?php
    }
    ?>

  <?php
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