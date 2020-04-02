<?php
require "../auth/auth.php";
require "../database.php";
if (isset($_POST['SubBtn'])) {
  $error = false;
  $gl_acc_code = $_POST['gl_acc_code'];
  $office_code = $_SESSION['office_code'];
  $member_type = $_POST['member_type'];
  $full_name = $_POST['fullname'];
  $father_name = $_POST['f_name'];
  $mother_name = $_POST['m_name'];
  $husband_name = $_POST['h_name'];
  $email = $_POST['email'];
  $mobile = $_POST['mobile'];
  $nid_birth_no = $_POST['nid_birth_no'];
  $passport_no = $_POST['passport_no'];
  $blood_group = $_POST['blood_group'];
  $dob = $_POST['dob'];
  $village = $_POST['village'];
  $division = $_POST['division'];
  $district = $_POST['district'];
  $upazila = $_POST['upazila'];
  $p_office = $_POST['p_office'];
  $p_code = $_POST['p_code'];
  $p_village = $_POST['p_village'];
  $p_division = $_POST['p_division'];
  $p_district = $_POST['p_district'];
  $p_upazila = $_POST['p_upazila'];
  $p_p_office = $_POST['p_p_office'];
  $p_p_code = $_POST['p_p_code'];
  $donation_type = $_POST['donation_type'];
  $payment_type = $_POST['payment_type'];
  $annul_c_tk = $_POST['annul_c_tk'];
  $referred_person_type = $_POST['referred_person_type'];
  $referred_person_id = $_POST['referred_person_id'];
  $referred_person = $_POST['referred_person'];
  $annual_con_in_fc = $_POST['annual_con_in_fc'];
  $currency_type = $_POST['currency_type'];
  $currency_rate = $_POST['currency_rate'];
  $activation_key = $_POST['activation_key'];
  $ss_creator = $_SESSION['username'];
  $ss_org_no = $_SESSION['org_no'];

  $insertQuery = "INSERT INTO `fund_member` (member_id,gl_acc_code,office_code,member_type,full_name,father_name,mother_name,husband_name,email,mobile,nid_birth_no,passport_no,blood_group,dob,village,division,district,upazila,p_office,p_code,p_village,p_division,p_district,p_upazila,p_p_office,p_p_code,donation_type,payment_type,annul_c_tk,referred_person_type,referred_person_id,referred_person,annual_con_in_fc,currency_type,currency_rate,activation_key,ss_creator,ss_creator_on,ss_org_no) VALUES (NULL,'$gl_acc_code','$office_code','$member_type','$full_name','$father_name','$mother_name','$husband_name','$email','$mobile','$nid_birth_no','$passport_no','$blood_group','$dob','$village','$division','$district','$upazila','$p_office','$p_code','$p_village','$p_division','$p_district','$p_upazila','$p_p_office','$p_p_code','$donation_type','$payment_type','$annul_c_tk','$referred_person_type','$referred_person_id','$referred_person','$annual_con_in_fc','$currency_type','$currency_rate','$activation_key','$ss_creator',now(),'$ss_org_no')";

  $conn->query($insertQuery);
  // echo $insertQuery; exit;
  if ($conn->affected_rows == 1) {
    $message = "Save Successfully!";
  } else {
    $mess = "Failled!";
  }
  header('refresh:2;../bodri_qafela/member_registration.php');
}
?>
<?php
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>
<?php
$query = "Select Max(member_id) From fund_member";
$returnD = mysqli_query($conn, $query);
$result = mysqli_fetch_assoc($returnD);
$maxRows = $result['Max(member_id)'];
if (empty($maxRows)) {
  $lastRow = $maxRows = 1;
} else {
  $lastRow = $maxRows + 1;
}
?>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> Member Registration</h1>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="index.php">Home</a></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-12">
      <!-- -------------------------------->
      <form action="" method="post">
        <!-- mamber part  -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Member ID <span style="color:red;">* </span></label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="member_id" class="form-control" autofocus placeholder="ID" value=<?php if (!empty($lastRow)) {
                                                                                                        echo $lastRow;
                                                                                                      } ?> readonly>
          </div>
          <label class="col-sm-2 col-form-label">Member Type</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="member_type" id="" class="form-control">
              <!-- ----------------------------------->
              <?php
              $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "MTYPE" AND `softcode`>0';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['softcode'] . '">' . $row['softcode'] . "." . $row['description'] . '</option>';
                }
              }
              ?>
            </select>
            <!------------------------------------->
          </div>
        </div>
        <!-- Name part -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Full Name</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="fullname" class="form-control" placeholder="Full Name">
          </div>
          <label class="col-sm-2 col-form-label">Father Name</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="f_name" class="form-control" placeholder="Father Name">
          </div>
        </div>
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Mother Name</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="m_name" class="form-control" placeholder="Mother Name">
          </div>
          <label class="col-sm-2 col-form-label">Spouse Name</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="h_name" class="form-control" placeholder="Spouse Name(if applicable)">
          </div>
        </div>
        <!-- contract part -->
        <!-- script start  -->
        <script>
          function checkemailAvailability() {
            $("#loaderIcon").show();
            jQuery.ajax({
              url: "../common/check_availability.php",
              data: 'memberemailid=' + $("#memberemailid").val(),
              type: "POST",
              success: function(data) {
                $("#email-availability-status").html(data);
                $("#loaderIcon").hide();
              },
              error: function() {}
            });
          }
        </script>
        <!-- script stop  -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Email</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="email" name="email" class="form-control" id="memberemailid" onBlur="checkemailAvailability()" placeholder="admin@domain.com">
            <tr>
              <th width="24%" scope="row"></th>
              <td><span id="email-availability-status"></span></td>
            </tr>
          </div>
          <label class="col-sm-2 col-form-label">Mobile No</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="tel" id="phone" name="mobile" class="form-control">
          </div>
        </div>

        <!-- nid/pasport part -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">NID/Birth Cer. No</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="nid_birth_no" class="form-control" id="validationServer01" placeholder="NID/Birth Cert. no">
          </div>
          <label class="col-sm-2 col-form-label">Pasport</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="text" name="passport_no" class="form-control" placeholder="Passport No">
          </div>
        </div>
        <!-- date of birth and blood group part -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Blood Group</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="blood_group" class="form-control">
              <!---------------------------------------------->
              <?php
              $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "BGTYP" AND `softcode`>0';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['softcode'] . '">' . $row['description'] . '</option>';
                }
              }
              ?>
              <!------------------------------------------------->
            </select>
          </div>
          <label class="col-sm-2 col-form-label">Date OF Birth</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="date" name="dob" class="form-control">
          </div>
        </div>
        <!-- address part -->
        <div class="form-row form-group">
          <div class="col-sm-6">
            <div class="card">
              <div class="card-header">
                Present Address
              </div>
              <div class="card-body">
                <!--------------------address script and php query---------------------------->
                <?php
                require "../dbcontroller.php";
                $db_handle = new DBController();
                $query = "SELECT * FROM divisions";
                $results = $db_handle->runQuery($query);
                ?>
                <!------------------------------------------------>
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Village/Road/House/Flat</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <input type="text" class="form-control" name="village" placeholder="Village/Road#/House#/Flat#">
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Division</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <select name="division" id="division-list" class="form-control" onChange="getDistrict(this.value);">
                      <option value="">Select Division</option>
                      <?php
                      foreach ($results as $division) {
                      ?>
                        <option value="<?php echo $division["id"]; ?>"><?php echo $division["name"]; ?></option>
                      <?php
                      }
                      ?>
                    </select>
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Dristrict</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <select name="district" id="district-list" class="form-control" onChange="getUpazilas(this.value);">
                      <option value="">Select Distict</option>
                    </select>
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">P.S./Upazila</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <select name="upazila" id="upazilla-list" class="form-control">
                      <option value="">Select Upazila</option>
                    </select>
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Post Office</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <input type="text" name="p_office" class="form-control">
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Post Code</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <input type="text" name="p_code" class="form-control">
                  </div>
                </div>
                <!--------------------------------------------->
              </div>
            </div>
          </div>
          <div class="col-sm-6">
            <div class="card">
              <div class="card-header">
                Parmanant Address
              </div>
              <div class="card-body">
                <!------------------------------------------------>
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Village/Road/House/Flat</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <input type="text" name="p_village" class="form-control" placeholder="Village/Road#/House#/Flat#">
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Division</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <select name="p_division" id="division-list1" class="form-control" onChange="getDistrict1(this.value);">
                      <option value="">Select Division</option>
                      <?php
                      foreach ($results as $division) {
                      ?>
                        <option value="<?php echo $division["id"]; ?>"><?php echo $division["name"]; ?></option>
                      <?php
                      }
                      ?>
                    </select>
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Dristrict</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <select name="p_district" id="district-list1" class="form-control" onChange="getUpazilas1(this.value);">
                      <option value="">Select District</option>
                    </select>
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">P.S./Upazila</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <select name="p_upazila" id="upazilla-list1" class="form-control">
                      <option value="">Select Upazila</option>
                    </select>
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Post Office</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <input type="text" name="p_p_office" class="form-control">
                  </div>
                </div>
                <!------------------------------------------->
                <div class="form-row form-group">
                  <label for="inputPassword" class="col-sm-5 col-form-label">Post Code</label>
                  <label for="" class="col-form-label">:</label>
                  <div class="col">
                    <input type="text" name="p_p_code" class="form-control">
                  </div>
                </div>
                <!--------------------------------------------->
              </div>
            </div>
          </div>
        </div>
        <!-- donation type/payment/contrinutionreffered type -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Donation Type</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="donation_type" class="form-control">
              <!--------------------------------------------------------->
              <?php

              $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "DOTY" AND `softcode`>0';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['softcode'] . '">' . $row['softcode'] . "." . $row['description'] . '</option>';
                }
              }
              ?>
              <!--------------------------------------------------------->
            </select>
          </div>
          <label class="col-sm-2 col-form-label">Payment Type</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="payment_type" class="form-control">
              <!--------------------------------------------------------->
              <?php
              $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "DTYPE" AND `softcode`>0';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['softcode'] . '">' . $row['softcode'] . "." . $row['description'] . '</option>';
                }
              }
              ?>
              <!----------------------------------------------------------->
            </select>
          </div>
          <label class="col-sm-3 col-form-label">Annual Contribution in Taka</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="number" name="annul_c_tk" class="form-control" placeholder="In TK.">
          </div>
        </div>

        <!-- ---------------------Referred type start----------------- -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Referred Person Type</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="referred_person_type" class="form-control">
              <!--------------------------------------------------------->
              <?php

              $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "RTYPE" AND `softcode`>0';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['softcode'] . '">' . $row['softcode'] . '. ' . $row['description'] . '</option>';
                }
              }
              ?>
              <!--------------------------------------------------------->
            </select>
          </div>

          <?php
          $query = "SELECT * FROM fund_ref_info";
          $results = $db_handle->runQuery($query);
          ?>
          <!------------------------------------------------>
          <label class="col-sm-2 col-form-label">Refferd ID</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="referred_person_id" id="division-list" class="form-control" onChange="get_ref(this.value);">
              <option value="">Select Refferd ID</option>
              <?php
              foreach ($results as $ref) {
              ?>
                <option value="<?php echo $ref["reffered_id"]; ?>"><?php echo $ref["reffered_id"]; ?></option>
              <?php
              }
              ?>
            </select>
          </div>
          <label class="col-sm-3 col-form-label">Refferd Name</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="referred_person" id="get_id" class="form-control" type="text">

            </select>
          </div>
        </div>
        <!----------------------- Referred type End --------------------->
        <!-- ---------------------currency type start----------------- -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Annual Contribution in FC</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="number" name="annual_con_in_fc" class="form-control">
          </div>
          <label class="col-sm-2 col-form-label">Currency Type</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <select name="currency_type" class="form-control">
              <!--------------------------------------------------------->
              <?php

              $selectQuery = 'SELECT * FROM `code_master` WHERE `hardcode`= "CURT" AND `softcode`>0';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['softcode'] . '">' . $row['softcode'] . '. ' . $row['description'] . '</option>';
                }
              }
              ?>
              <!--------------------------------------------------------->
            </select>
          </div>
          <label class="col-sm-3 col-form-label">Currency Rate</label>
          <label for="" class="col-form-label">:</label>
          <div class="col">
            <input type="number" name="currency_rate" class="form-control" placeholder="Currency Rate">
          </div>
        </div>
        <!-- ---------------------currency type start----------------- -->
        <div class="form-row form-group">
          <label class="col-sm-2 col-form-label">Link Gl Code</label>
          <label for="" class="col-form-label">:</label>
          <div class="col-3">
            <select name="gl_acc_code" class="form-control select2">
              <!--------------------------------------------------------->
              <?php

              $selectQuery = "SELECT * FROM `gl_acc_code` where postable_acc= 'Y' AND category_code=5 AND acc_type=4 ORDER by acc_code";
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['acc_code'] . '">' . $row['acc_head'] . '</option>';
                }
              }
              ?>
              <!--------------------------------------------------------->
            </select>
          </div>

        </div>
        <!----------------------- currency type End --------------------->

        <!------------------------------------------------------------------>
        <input type="hidden" name="activation_key" value="0">
        <!-- ------------------------------------------------------------ -->
        <input type="submit" value="Submit" id="register" class=" btn btn-primary form-control text-center" name="SubBtn">
      </form>
      <!---------------------------------->
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
<script src="../js/select2.full.min.js"></script>
<script>
  $(function() {
    //Initialize Select2 Elements
    $('.select2').select2()

  })

  function getDistrict(val) {
    $.ajax({
      type: "POST",
      url: "../common/getDistrict.php",
      data: 'division_id=' + val,
      success: function(data) {
        $("#district-list").html(data);
        getUpazilas();
      }
    });
  }

  function getUpazilas(val) {
    $.ajax({
      type: "POST",
      url: "../common/getUpazilas.php",
      data: 'district_id=' + val,
      success: function(data) {
        $("#upazilla-list").html(data);
      }
    });
  }

  function getDistrict1(val) {
    $.ajax({
      type: "POST",
      url: "../common/getDistrict.php",
      data: 'division_id=' + val,
      success: function(data) {
        $("#district-list1").html(data);
        getUpazilas1();
      }
    });
  }

  function getUpazilas1(val) {
    $.ajax({
      type: "POST",
      url: "../common/getUpazilas.php",
      data: 'district_id=' + val,
      success: function(data) {
        $("#upazilla-list1").html(data);
      }
    });
  }

  function get_ref(val) {
    $.ajax({
      type: "POST",
      url: "getRefInfo.php",
      data: 'reffered_id=' + val,
      success: function(data) {
        $("#get_id").html(data);
      }
    });
  }
  $(document).ready(function() {
    $("#901000").addClass('active');
    $("#900000").addClass('active');
    $("#900000").addClass('is-expanded');

  });
</script>

</body>

</html>