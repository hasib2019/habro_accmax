<?php
require "../auth/auth.php";
require "../database.php";
require '../source/top.php';
$pid= 203000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);

// Assign Menu To Role .....
if (isset($_POST['submit'])) {
  $a = $_POST['role'];
  $deleteQuery = "DELETE FROM sm_role_dtl WHERE role_no ='$a'";
  // echo $deleteQuery; exit;
  $conn->query($deleteQuery);
  for ($count = 0; $count < count($_POST['role_no']); ++$count) {
    $role_no = $_POST['role_no'][$count];
    $menu_no = $_POST['menu_no'][$count];
    $menu_name = $_POST['menu_name'][$count];
    $menu_obj_name = $_POST['menu_obj_name'][$count];
    $main_id = $_POST['main_id'][$count];
    $p_menu_no = $_POST['p_menu_no'][$count];
    $active_stat = $_POST['active_stat'][$count];

    if ($role_no > 0) {
      $query = "INSERT INTO `sm_role_dtl` (`role_no`, `menu_no`, `menu_name`, `menu_obj_name`,`main_id`,`p_menu_no`,`active_stat`) VALUES ('$role_no', '$menu_no', '$menu_name','$menu_obj_name', '$main_id', '$p_menu_no', '$active_stat')";
      $conn->query($query);
      if ($conn->affected_rows == TRUE) {
        $assign_menu = "Successfully";
      } else {
      }
    } else {
      $assign_menu_failled = "Failled";
    }
  }
  header('refresh:2;user_roles_details.php');
}
require '../source/sidebar.php';
require '../source/header.php';
?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> Role Details</h1>
    </div>
  </div>
  <!-- Assign menu to role success massage -->
  <!-- ============ Assign Menu To Role ============ -->
  <div class="card">
    <div class="card-header" style="background-color:#85C1E9">
      <h4 style="text-align:center">Assign Menu To Role</h4>
      <!-- <h1>Assign Menu To Role</h1> -->
    </div>
    <div class="card-body">
      <table style="width: 100%">
        <th><label for="">Role</label></th>
        <th></th>
        <th><label for="">Assign To Role</label></th>
        <tbody>
          <tr>
            <form method="POST" name="search">
              <div class="search-box">
                <td>
                  <select name="grand_role[]" class="form-control">
                    <option value="">- Select Role -</option>
                    <?php
                    $selectQuery = 'SELECT role_no , role_name FROM `sm_role`';
                    $selectQueryResult = $conn->query($selectQuery);
                    if ($selectQueryResult->num_rows) {
                      while ($row = $selectQueryResult->fetch_assoc()) {
                        echo '<option value="' . $row['role_no'] . '">' . $row['role_name'] . '</option>';
                      }
                    }
                    ?>
                  </select></td>
                <td><button class="btn btn-info" style="width: 100%" id="search"> Search Menu </button></td>
              </div>
            </form>
            <!-- select role start -->
            <!-- select employee start -->
            <td>
              <select name="role_no" class="form-control role" id="role_no" onchange="myFunction()" data-srno="1" width="400px" class="form" required>
                <option value="">- Select Assign To Role -</option>
                <?php
                $selectQuery = 'SELECT * FROM `sm_role`';
                $selectQueryResult = $conn->query($selectQuery);
                if ($selectQueryResult->num_rows) {
                  while ($row = $selectQueryResult->fetch_assoc()) {
                ?>
                <?php
                    echo '<option value="' . $row['role_no'] . '">' . $row['role_name'] . '</option>';
                  }
                }
                ?>
              </select>
            </td>
          </tr>
        </tbody>
      </table> <br>
      <!-- display in role details start -->
      <?php
      // grand_role[] not empty....
      if (!empty($_POST['grand_role'])) {
      ?>
        <form method="POST">
          <table class="bordered" style="width:100%">
            <thead>
              <tr>
                <th>Menu No</th>
                <th>Menu Name</th>
                <th>Menu Object Name</th>
                <th>Active Status</th>
              </tr>
            </thead>
            <tbody>
              <?php
              // continue select all data..
              // $sql = "SELECT * FROM `sm_role_dtl`";
              $i = 0;
              // total count of grand role..
              $selectedOptionCount = count($_POST['grand_role']);
              $selectedOption = '';
              //while (0<selectedOptionCount)..
              while ($i < $selectedOptionCount) {
                $selectedOption = $selectedOption . "'" . $_POST['grand_role'][$i] . "'";
                if ($i < $selectedOptionCount - 1) {
                  $selectedOption = $selectedOption . ', ';
                }
                ++$i;
              }
              // $sql = "SELECT * FROM `sm_role_dtl`" . ' WHERE `role_no` in (' . $selectedOption . ') and active_stat=1';
              $sql = "SELECT sm_menu.id, sm_menu.menu_no, sm_menu.menu_name, sm_menu.menu_obj_name, sm_menu.p_menu_no, sm_role_dtl.role_no, sm_role_dtl.active_stat FROM sm_menu LEFT outer JOIN sm_role_dtl" . ' ON sm_menu.menu_no=sm_role_dtl.menu_no AND sm_role_dtl.role_no in (' . $selectedOption . ') order by sm_menu.menu_no';
              // $sql = $sql.' WHERE `role_no` in ('.$selectedOption.') and active_stat="1"';
              $query = mysqli_query($conn, $sql);
            }
            if (!empty($query)) {
              // $count = 1;
              //use for MySQLi-OOP
              // $query = $conn->query($sql);
              if (is_array($query) || is_object($query)) {
                // foreach ($query as $rows) {
                while ($rows = $query->fetch_assoc()) {
              ?>
                  <tr>
                    <input type="hidden" name="id" class="form-control" value="<?php echo $rows['id']; ?>" style="width: 100%" readonly>
                    <td>
                      <input type="text" name="menu_no[]" class="form-control" value="<?php echo $rows['menu_no']; ?>" style="width: 100%" readonly>
                    </td>
                    <td>
                      <input type="text" name="menu_name[]" class="form-control" value="<?php echo $rows['menu_name']; ?>" style="width: 100%" readonly>
                    </td>
                    <td>
                      <input type="text" name="menu_obj_name[]" class="form-control" value="<?php echo $rows['menu_obj_name']; ?>" style="width: 100%" readonly>
                    </td>
                    <td>
                      <select name="active_stat[]" id="" class="form-control hh" style="width: 100%">
                        <option value="1" <?php if ($rows['active_stat'] == 1) { ?> selected="selected" <?php } ?>>Active</option>
                        <option value="0" <?php if ($rows['active_stat'] == 0) { ?> selected="selected" <?php } ?>>Inactive</option>
                      </select>
                    </td>
                    <input type="hidden" name="main_id[]" value="<?php echo $rows['id']; ?>" style="width: 100%">
                    <input type="hidden" name="p_menu_no[]" value="<?php echo $rows['p_menu_no']; ?>" style="width: 100%">
                    <input type="hidden" name="role_no[]" class="role">
                  </tr>
              <?php
                }
              }
              ?>
            </tbody>
          </table>
          <input type="text" name="role" class="role" hidden>
          <input name="submit" type="submit" id="submit" value="Create Grand Role" class="btn btn-info pull-right submit"/>
        <?php
            }
        ?>
        </form>
    </div>
    <?php
    if (!empty($assign_menu)) {
      echo '<script type="text/javascript">
            Swal.fire(
                "Assign Menu To Role Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
    }
    if (!empty($assign_menu_failled)) {
      echo '<script type="text/javascript">
      Swal.fire(
        "Failled!!",
        "Please Select -> Assign To Role!!",
        "Sorry ' . $_SESSION['username'] . '",
        "success"
      )
            </script>';
    }
    ?>
  </div>
</main>
<style>
  .intro {
    background-color: red;
  }
</style>
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
    $("#203000").addClass('active');
    $("#200000").addClass('active');
    $("#200000").addClass('is-expanded');
    // on change
    $('#submit').hide();
    $(document).on('change', '.role', function() {
      $('.role').val($(this).val());
      $(".role").addClass("intro");
      // show and hide
      $('#submit').show();
    });
    // show and hide
    // $('#submit').hide();
    // $('#search').click(function() {
    //   $('#submit').show();
    // });
  });
</script>
</body>

</html>