<?php
require "../auth/auth.php";
require "../database.php";
$seprt_cs_info = $_SESSION['seprt_cs_info'];
if (isset($_POST['subBtn'])) {
  $office_code = $_SESSION['office_code'];
  $acc_code = $_POST['acc_code'];
  $acc_head = $_POST['acc_head'];
  $postable_acc = $_POST['postable_acc'];
  $rep_glcode = $_POST['rep_glcode'];
  $category_code = $_POST['category_code'];
  $acc_level = $_POST['acc_level'];
  $acc_type = $_POST['acc_type'];
  $parent_acc_code = $_POST['parent_acc_code'];
  $ss_creator = $_SESSION['username'];
  $ss_org_no =  $_SESSION['org_no'];

  $insertQuery = "INSERT INTO `gl_acc_code` (`id`,`office_code`, `acc_code`, `acc_head`, `postable_acc`,`rep_glcode`,`category_code`,`acc_level`,`acc_type`,`parent_acc_code`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$acc_code','$acc_head','$postable_acc','$rep_glcode','$category_code','$acc_level','$acc_type','$parent_acc_code','$ss_creator',now(),'$ss_org_no')";
  $conn->query($insertQuery);
  if ($conn->affected_rows == 1) {
    $message = "Save Successfully!";
  } else {
    $mess = "Failled!";
  }
  header('refresh:1;gl_account.php');
}

$query = "Select Max(acc_code) From gl_acc_code where acc_level=1";
$returnDrow = mysqli_query($conn, $query);
$resultrow = mysqli_fetch_assoc($returnDrow);
$maxRowsrow = $resultrow['Max(acc_code)'];
if (empty($maxRowsrow)) {
  $lastRowrow = $maxRowsrow = 100000000000;
} else {
  $lastRowrow = $maxRowsrow + 100000000000;
}
require "../source/top.php";
$pid= 301000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-plus"></i> General Ladger Account Open</h1>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div>
        <!-- collapse -->
        <button data-toggle="collapse" data-target="#demo" class="btn btn-success float-right"><i class="fa fa-plus" aria-hidden="true"></i>GL Account Open</button>
        <br>
        <hr>
        <div id="demo" class="collapse">
          <div style="padding:5px;">
            <!-- form start  -->
            <form action="" method="post">
              <!-- acc conde  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Account Code</label>
                <div class="col-sm-6">
                  <input type="text" readonly name="acc_code" class="form-control" autofocus value=<?php if (!empty($lastRowrow)) {
                                                                                                      echo $lastRowrow;
                                                                                                    } ?>>
                </div>
              </div>
              <!-- account name  -->
              <script>
                function gl_account_check_availability() {
                  var name = $("#acc_head").val();
                  $("#loaderIcon").show();
                  jQuery.ajax({
                    url: "gl_account_check_availability.php",
                    data: 'acc_head=' + name,
                    type: "POST",
                    success: function(data) {
                      $("#name_availability_status").html(data);
                      $("#loaderIcon").hide();
                    },
                    error: function() {}
                  });
                }
              </script>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Account Name</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="acc_head" name="acc_head" onkeyup="gl_account_check_availability()" required>
                  <tr>
                    <th width="24%" scope="row"></th>
                    <td><span id="name_availability_status"></span></td>
                  </tr>
                </div>
              </div>
          </div>
          <!-- post able account  -->
          <div class="form-group row">
            <label class="col-sm-2 col-form-label">Post Level Account</label>
            <div class="col-sm-6">
              <input type="radio" name="postable_acc" value="Y" onclick="Fun()" id="more"><label class="col-sm-3 col-form-label">Ledger Account</label>
              <input type="radio" name="postable_acc" value="N" class="group"><label class="col-sm-3 col-form-label">Group Account</label>
            </div>
          </div>
         
          <!-- reporting  -->
          <div class="form-group row">
            <label class="col-sm-2 col-form-label">Reporting GL Code</label>
            <div class="col-sm-6">
              <input type="text" class="form-control" name="rep_glcode">
            </div>
          </div>
          <!-- category  -->
          <div class="form-group row">
            <label class="col-sm-2 col-form-label">Category</label>
            <div class="col-sm-6">
              <select name="category_code" class="form-control" required>
                <!-- ----------------------------------->
                <?php
                if ($seprt_cs_info == 'N') {
                  $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "acat" AND `softcode`>0 ORDER BY softcode limit 4';
                } else {
                  $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "acat" AND `softcode`>0';
                }
                $selectQueryResult =  $conn->query($selectQuery);
                if ($selectQueryResult->num_rows) {
                  while ($row = $selectQueryResult->fetch_assoc()) {
                    echo '<option value="' . $row['softcode'] . '">'  . $row['description'] . '</option>';
                  }
                }
                ?>
              </select>
            </div>
          </div>
          <!-- Account Type  -->
          <div class="form-group row">
            <label class="col-sm-2 col-form-label">Account Type</label>
            <div class="col-sm-6">
              <select name="acc_type" class="form-control" required>
                <?php
                $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "acc_t" AND `softcode`>0';
                $selectQueryResult =  $conn->query($selectQuery);
                if ($selectQueryResult->num_rows) {
                  while ($row = $selectQueryResult->fetch_assoc()) {
                    echo '<option value="' . $row['softcode'] . '">'  . $row['description'] . '</option>';
                  }
                }
                ?>
              </select>
            </div>
          </div>
          <!-- lavel  -->
          <input type="number" name="acc_level" class="form-control" value="1" hidden>
          <input type="number" class="form-control" name="parent_acc_code" value="0" hidden>
          <!-- submit  -->
          <div class="form-group row">
            <div class="col-sm-10">
              <button type="submit" class="btn btn-primary" name="subBtn" <?php if($lastRowrow>=600000000000){echo "disabled";} ?>>Submit</button>
            </div>
          </div>
          </form>
        </div>
      </div>
      <hr>
      <!-- form close  -->
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
      <!-- table view start  -->
      <div class="tile">
        <div class="tile-body">
          <table class="table table-hover table-bordered table-sm" id="sampleTable">
            <thead>
              <tr>
                <th>ID</th>
                <th>Category</th>
                <th>A/c Code</th>
                <th>A/c Name</th>
                <th>GL Code</th>
                <th>Pr.A/c</th>
                <th>Postable</th>
                <th>A/c Level</th>
                <th>A/c Type</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $sql = "SELECT gl_acc_code.id, gl_acc_code.category_code,gl_acc_code.acc_code,gl_acc_code.acc_head,gl_acc_code.rep_glcode,gl_acc_code.parent_acc_code,gl_acc_code.postable_acc,gl_acc_code.acc_level,gl_acc_code.acc_type,code_master.hardcode,code_master.softcode,code_master.description,code_master.sort_des FROM gl_acc_code,code_master where gl_acc_code.category_code=code_master.softcode AND code_master.hardcode='acat' ORDER by acc_code";
              $query = $conn->query($sql);
              while ($rows = $query->fetch_assoc()) {
                echo
                  "<tr>
									<td>" . $rows['id'] . "</td>
									<td>" . $rows['description'] . "</td>
									<td>" . $rows['acc_code'] . "</td>
									<td>" . $rows['acc_head'] . "</td>
									<td>" . $rows['rep_glcode'] . "</td>
									<td>" . $rows['parent_acc_code'] . "</td>
									<td>" . $rows['postable_acc'] . "</td>
									<td>" . $rows['acc_level'] . "</td>
									<td>" . $rows['acc_type'] . "</td>
                  <td><a href='gl_account_add.php?id=" . $rows['id'] . "' class='btn btn-success btn-sm'><span class='fa fa-plus'></span>Sub GL</a>
                  <a href='gl_account_edit.php?recortid=" . $rows['id'] . "' class='btn btn-success btn-sm'><i class='fa fa-pencil-square-o' aria-hidden='true'></i>Edit</a>
										<a href='#delete_" . $rows['id'] . "' class='btn btn-danger btn-sm' data-toggle='modal'><span class='fa fa-trash'></span>Delete</a>
									</td>
								</tr>";
                include('edit_delete_modal.php');
              }
              ?>
            </tbody>
          </table>
        </div>
      </div>

      <!-- table view end -->
    </div>
    <!-- ----------------code here---------------->
  </div>
  </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
  $('#sampleTable').DataTable();
</script>
<!-- registration_division_district_upazila_jqu_script -->
<script type="text/javascript">
  $(document).ready(function() {
    $("#301000").addClass('active');
    $("#300000").addClass('active');
    $("#300000").addClass('is-expanded');
  });
  // more informatino script start
  $('#more_show').hide();
  var id = this.value;
  $('#more').on('click', function() {
    $('#more_show').show(1000);
  });
  //=========
  $('.group').on('click', function() {
    $('#more_show').hide();
  });
  //=========
  $('#aaa').on('change', function() {
    //  alert(this.value);
    var id = this.value;
    if (id == Y) {
      // alert('ok');
      $.ajax({
        type: "post",
        url: "get_more_info.php",
        data: "id=" + id,
        dataType: "JOSN",
        success: function(response) {}
      });
    }

  });
</script>
<?php
$conn->close();
?>
</body>

</html>