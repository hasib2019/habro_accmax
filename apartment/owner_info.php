<?php
require "../auth/auth.php";
require "../database.php";
$seprt_cs_info = $_SESSION['seprt_cs_info'];

if (isset($_POST['ownerSubmit'])) {
  $office_code = $_SESSION['office_code'];
  $cust_type = $conn->escape_string($_POST['cust_type']);
  $cust_name = $conn->escape_string($_POST['cust_name']);
  $cust_add = $conn->escape_string($_POST['cust_add']);
  $cust_contact_per = $conn->escape_string($_POST['cust_contact_per']);
  $cust_location_code = $conn->escape_string($_POST['cust_location_code']);
  $cust_TIN_no = $conn->escape_string($_POST['cust_TIN_no']);
  $cust_VAT_no = $conn->escape_string($_POST['cust_VAT_no']);
  $cust_TDS_no = $conn->escape_string($_POST['cust_TDS_no']);
  // $link_gl_code = $conn->escape_string($_POST['link_gl_code']);
  $ss_creator = $_SESSION['username'];
  $ss_created_on = $_SESSION['org_eod_bod_proceorg_date'];
  $ss_org_no = $_SESSION['org_no'];

  $insertownerQuery = "INSERT INTO `cust_info`(`id`,`office_code`,`cust_type`,`cust_name`, `cust_add`, `cust_contact_per`,`cust_location_code`,`cust_TIN_no`,`cust_VAT_no`,`cust_TDS_no`,`ss_creator`,`ss_created_on`,`ss_org_no`) values (NULL,'$office_code','$cust_type','$cust_name','$cust_add','$cust_contact_per','$cust_location_code','$cust_TIN_no','$cust_VAT_no','$cust_TDS_no','$ss_creator','$ss_created_on','$ss_org_no')";
  // echo $insertownerQuery;
  // exit;
  $conn->query($insertownerQuery);
  if ($conn->affected_rows == 1) {
    $message = "Save cust Successfully!";
  } else {
    $mess = "Failled!";
  }
  header('refresh:2;cust_info.php');
}
?>
<?php
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> Owner Information</h1>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
    </ul>
  </div>
  <?php if ($seprt_cs_info == 'Y') { ?>
    <!-- button -->
    <div>
      <button id="ownerAddBtn" class="btn btn-success col-3"><i class="fa fa-plus"></i>Add Owner info. </button>
      <button id="ownerGeneralAccount" class="btn btn-info col-3"><i class="fa fa-plus"></i>GL A/C For Owner</button>
      <button id="ownerListView" class="btn btn-primary col-3"><i class="fa fa-eye"></i> Owner List </button>
    </div>
    <!-- button -->
    <div class="row">
      <div class="col-md-12">
        <div>
          <br>
          <!-- owner Account Information end -->
          <div id="ownerForm" class="collapse">
            <div style="padding:5px">
              <!-- form start  -->
              <form method="post">
                <!-- Office Code -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Owner_id</label>
                    <div class="col-sm-6">
                        <input type="text" name="owner_id" class="form-control" id="owner_id" placeholder="Enter owner_id" required>
                    </div>
                </div>
                <!-- Office Type -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> owner_name</label>
                    <div class="col-sm-6">
                        <input type="text" name="owner_name" class="form-control" id="owner_name" placeholder="Enter owner_name" required>
                    </div>
                </div>
                <!-- Name -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> flat_no</label>
                    <div class="col-sm-6">
                        <input type="text" name="flat_no" class="form-control" id="flat_no" placeholder="Enter flat_no" required>
                    </div>
                </div>

                <!-- Address  -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> father_hus_name </label>
                    <div class="col-sm-6">
                        <input type="text" name="father_hus_name" class="form-control" id="father_hus_name" placeholder="Enter father_hus_name" required>
                    </div>
                </div>
                <!-- Area Code -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">mother_name</label>
                    <div class="col-sm-6">
                        <input type="text" name="mother_name" class="form-control" id="mother_name" placeholder="Enter mother_name" required>
                    </div>
                </div>
                <!-- Contact Person -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> nid</label>
                    <div class="col-sm-6">
                        <input type="text" name="nid" class="form-control" id="nid" placeholder="Enter nid" required>
                    </div>
                </div>
                <!--  Mobile No  -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> passport_no </label>
                    <div class="col-sm-6">
                        <input type="text" name="passport_no" class="form-control" id="passport_no" placeholder="Enter passport_no" required>
                    </div>
                </div>
                <!-- Proj/Wear House/Br. Start or Est. Date -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">date_of_birth</label>
                    <div class="col-sm-6">
                        <input type="date" name="date_of_birth" class="form-control" id="" placeholder="Enter date_of_birth" required>
                    </div>
                </div>
                <!-- mobile_no -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">mobile_no</label>
                    <div class="col-sm-6">
                        <input type="number" name="mobile_no" class="form-control" id="mobile_no" placeholder="Enter mobile_no" required>
                    </div>
                </div>
                <!-- permanent_add -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">intercom_number</label>
                    <div class="col-sm-6">
                        <input type="number" name="intercom_number" class="form-control" id="intercom_number" placeholder="Enter intercom_number" required>
                    </div>
                </div>
                <!-- profession -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">profession</label>
                    <div class="col-sm-6">
                        <input type="text" name="intercom_number" class="form-control" id="intercom_number" placeholder="Enter intercom_number" required>
                    </div>
                </div>
                 <!-- owner_image -->
                 <div class="form-group row">
                    <label class="col-sm-2 col-form-label">owner_image</label>
                    <div class="col-sm-6">
                        <input type="file" name="intercom_number" class="form-control" id="intercom_number" placeholder="Enter intercom_number" required>
                    </div>
                </div>
                <!-- subBtn -->
                <div class="form-group row">
                    <div class="col-sm-10">
                        <input type="submit" class="btn btn-primary" name="subBtn" value="submit">
                        <input type="reset" class="btn btn-danger" value="cancel">
                    </div>
                </div>
            </form>
            </div>
          </div>
          <!-- owner Account Information start -->
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
          <div id="table">
            <!-- table view start  -->
            <div class="tile" id="ownerGeneralAcc">
              <div class="tile-body">
                <h5 style="text-align: center">owner General Account List</h5>
                <!-- General Account View start -->
                <table class="table table-hover table-bordered" id="ownerGeneralAccListTable">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Category</th>
                      <th>Account Code</th>
                      <th>Account Name</th>
                      <th>GL Code</th>
                      <th>Parent Acc</th>
                      <th>Postable</th>
                      <th>Account Level</th>
                      <th>Account Type</th>
                      <th>Add owner GL A/C</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $sql = "SELECT gl_acc_code.id, gl_acc_code.category_code,gl_acc_code.acc_code,gl_acc_code.acc_head,gl_acc_code.rep_glcode,gl_acc_code.parent_acc_code,gl_acc_code.postable_acc,gl_acc_code.acc_level,gl_acc_code.acc_type,code_master.hardcode,code_master.softcode,code_master.description,code_master.sort_des FROM gl_acc_code,code_master where gl_acc_code.category_code=code_master.softcode AND code_master.hardcode='acat'AND gl_acc_code.acc_type='7' ORDER by acc_code";
                    $query = $conn->query($sql);
                    while ($row = $query->fetch_assoc()) {
                      echo
                        "<tr>
									<td>" . $row['id'] . "</td>
									<td>" . $row['description'] . "</td>
									<td>" . $row['acc_code'] . "</td>
									<td>" . $row['acc_head'] . "</td>
									<td>" . $row['rep_glcode'] . "</td>
									<td>" . $row['parent_acc_code'] . "</td>
									<td>" . $row['postable_acc'] . "</td>
									<td>" . $row['acc_level'] . "</td>
									<td>" . $row['acc_type'] . "</td>
                  <td><a target='_blank' href='owner_gl_account_add.php?id=" . $row['id'] . "' class='btn btn-success btn-sm'><span class='fa fa-plus'></span>Add</a>
                  </td>
								</tr>";
                    }
                    ?>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="tile" id="ownerViewList">
              <div class="tile-body">
                <h5 style="text-align: center">owner List</h5>
                <!-- General Account View start -->
                <table class="table table-hover table-bordered" id="ownerListTable">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Type</th>
                      <th>Name</th>
                      <th>Address</th>
                      <th>Category</th>
                      <th>contact</th>
                      <th>location</th>
                      <th>TIN No</th>
                      <th>VAT No</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $sql = "SELECT * FROM `cust_info`";
                    $query = $conn->query($sql);
                    while ($rows = $query->fetch_assoc()) {
                      echo
                        "<tr>
									<td>" . $rows['id'] . "</td>
									<td>" . $rows['cust_type'] . "</td>
									<td>" . $rows['cust_name'] . "</td>
									<td>" . $rows['cust_add'] . "</td>
									<td>" . $rows['cust_business_category'] . "</td>
									<td>" . $rows['cust_contact_per'] . "</td>
									<td>" . $rows['cust_location_code'] . "</td>
									<td>" . $rows['cust_TIN_no'] . "</td>
									<td>" . $rows['cust_VAT_no'] . "</td>
                  <td><a target='_blank' href='cust_info_edit.php?id=" . $rows['id'] . "' class='btn btn-success btn-sm'><span class='fa fa-edit'></span>Edit</a>
                  </td>
								</tr>";
                      // include('edit_delete_modal.php');
                    }
                    ?>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- owner Account View start -->
          <?php
        } else {
          echo "<h6>NOT APPLICABLE FOR SEPERATE INFORMATION </h6>";
        } ?>
          </div>
        </div>
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
  $('#ownerGeneralAccListTable').DataTable();
  $('#ownerListTable').DataTable();
</script>
<!-- registration_division_district_upazila_jqu_script -->
<script type="text/javascript">
  $(document).ready(function() {
    $("#1102000").addClass('active');
    $("#1100000").addClass('active');
    $("#1100000").addClass('is-expanded');
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
  $('#ownerGeneralAcc').hide();
  // ownerAddBtn
  $('#ownerAddBtn').on('click', function() {
    $('#ownerForm').toggle();
    $('#table').toggle();
  });
  // ownerListView
  $('#ownerListView').on('click', function() {
    $('#ownerViewList').show();
    $('#ownerGeneralAcc').hide();
  });
  // ownerGeneralAccount
  $("#ownerGeneralAccount").click(function() {
    $("#ownerViewList").hide();
    $("#ownerGeneralAcc").show();
  });
</script>
<?php
$conn->close();
?>
</body>

</html>