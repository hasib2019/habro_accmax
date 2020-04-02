<?php
require "../auth/auth.php";
require "../database.php";
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> Bank Account Information </h1>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
    </ul>
  </div>
  <script>
    $(function() {
      $("#tabs").tabs();
    });
  </script>
  </head>

  <body>

    <div id="tabs">
      <ul>
        <li><a href="#tabs-1">Bank Information</a></li>
        <li><a href="#tabs-2">View Office</a></li>
        <li><a href="#tabs-3">Office Information</a></li>
        <li><a href="#tabs-4">VAT Information</a></li>
        <li><a href="#tabs-5">Supplier Information</a></li>
        <li><a href="#tabs-6">Customer Information</a></li>
        <li><a href="#tabs-7">Chque Information</a></li>
      </ul>
      <div id="tabs-1">
        <div class="row">
          <div class="col-md-12">
            <form method="post" id="bankForm">
              <!-- Bank Account No. -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Bank Account No.</label>
                <div class="col-sm-6">
                  <input type="text" name="bank_acc_no" class="form-control" id="" placeholder="Bank Account No" required>
                </div>
              </div>
              <!-- Account Name -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Account Name</label>
                <div class="col-sm-6">
                  <input type="text" name="acc_name" class="form-control" id="" placeholder="Account Name" required>
                </div>
              </div>
              <!-- Bank Code  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Bank</label>
                <div class="col-sm-6">
                  <div class="row">
                    <div class="col-sm-4">
                      <input type="text" name="bank_code" class="form-control" id="" placeholder="Bank Code" required>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" name="bank_name" class="form-control" id="" placeholder="Bank Name" required>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Branch name  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Branch</label>
                <div class="col-sm-6">
                  <div class="row">
                    <div class="col-sm-4">
                      <input type="text" name="branch_code" class="form-control" id="" placeholder="Branch Code" required>
                    </div>
                    <div class="col-sm-8">
                      <input type="text" name="branch_name" class="form-control" id="" placeholder="Branch Name" required>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Bank Address  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Bank Address </label>
                <div class="col-sm-6">
                  <input type="text" name="bank_address" class="form-control" id="" placeholder="Bank Address" required>
                </div>
              </div>
              <!-- General Account Code  -->
              <input type="text" name="gl_acc_code" class="form-control" id="" hidden>
              <!-- submit  -->
              <div class="form-group row">
                <div class="col-sm-10">
                  <input type="submit" class="btn btn-primary" name="subBtn" value="submit">
                  <input type="reset" class="btn btn-danger" name="subBtn" value="cancel">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div id="tabs-2">
        <table class="table table-hover">
          <tr class="active">
            <th>ID</th>
            <th>Office Code</th>
            <th>Office Name</th>
            <th>Office Type</th>
            <th>Office Address</th>
            <th>Office Contact Person</th>
            <th>Office Mobile No</th>
            <th>Office Start</th>
            <th>Office End</th>
            <th>Action</th>
          </tr>
          <?php
          $no = 1;
          $sql = "SELECT office_info.id, office_info.office_code, office_info.office_name, office_info.office_type, office_info.office_address, office_info.office_cont_person, office_info.office_con_mobile_no, office_info.office_start_dt, office_info.office_end_dt, code_master.hardcode, code_master.softcode, code_master.description FROM office_info, code_master WHERE office_info.office_type = code_master.softcode AND code_master.hardcode = 'OFFTP'";
          $query = $conn->query($sql);
          while ($rows = $query->fetch_assoc()) {
            echo
              "<tr>
									<td>" . $rows['id'] . "</td>
                                    <td>" . $rows['office_code'] . "</td>
                                    <td>" . $rows['office_name'] . "</td>
									<td>" . $rows['description'] . "</td>
									<td>" . $rows['office_address'] . "</td>
									<td>" . $rows['office_cont_person'] . "</td>
									<td>" . $rows['office_con_mobile_no'] . "</td>
									<td>" . $rows['office_start_dt'] . "</td>
									<td>" . $rows['office_end_dt'] . "</td>
                                    <td>
                                    <a href='office_info_edit.php?id=" . $rows['id'] . "' target='_blank' class='btn btn-success btn-sm><span class='glyphicon glyphicon-edit'></span>Edit</a>
                                </td>
								</tr>";
          }
          ?>
        </table>
      </div>
      <div id="tabs-3">
        <div class="row">
          <div class="col-md-12">
            <!-- form start  -->
            <form method="post">
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Code</label>
                <div class="col-sm-6">
                  <input type="text" name="office_code" class="form-control" id="" placeholder="Enter Office Code" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Type</label>
                <div class="col-sm-6">
                  <select name="office_type" class="form-control select2" required>
                    <option value="">-Select Office Type-</option>
                    <?php
                    $selectQuery = 'SELECT * FROM `code_master` where hardcode="OFFTP" AND softcode>0';
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
                </div>
              </div>
              <!-- Bank Account No. -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Name</label>
                <div class="col-sm-6">
                  <input type="text" name="office_name" class="form-control" id="" placeholder="Enter Office Name" required>
                </div>
              </div>

              <!-- Bank Code  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Address</label>
                <div class="col-sm-6">
                  <input type="text" name="office_address" class="form-control" id="" placeholder="Enter Office Address" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Area Code</label>
                <div class="col-sm-6">
                  <input type="text" name="area_code" class="form-control" id="" placeholder="Enter Office Code" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Contact Person</label>
                <div class="col-sm-6">
                  <input type="text" name="office_cont_person" class="form-control" id="" placeholder="Enter Financial Year" required>
                </div>
              </div>
              <!-- Branch name  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Mobile No</label>
                <div class="col-sm-6">
                  <input type="text" name="office_con_mobile_no" class="form-control" id="" placeholder="Enter Office Contact Person" required>
                </div>
              </div>
              <!-- from amount/ to amount -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Proj/Wear House/Br. Start or Est. Date</label>
                <div class="col-sm-6">
                  <input type="date" name="office_start_dt" class="form-control" id="" placeholder="Enter Office Start" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Proj/Wear House/Br. End or Est. Date </label>
                <div class="col-sm-6">
                  <input type="date" name="office_end_dt" class="form-control" id="" placeholder="Enter Office End" required>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-10">
                  <input type="submit" class="btn btn-primary" name="subBtn" value="submit">
                  <input type="reset" class="btn btn-danger" value="cancel">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div id="tabs-4">
        <div class="row">
          <div class="col-md-12">
            <!-- form start  -->
            <form method="post">
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Code</label>
                <div class="col-sm-6">
                  <input type="text" name="office_code" class="form-control" id="" placeholder="Enter Office Code" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Type</label>
                <div class="col-sm-6">
                  <select name="office_type" class="form-control select2" required>
                    <option value="">-Select Office Type-</option>
                    <?php
                    $selectQuery = 'SELECT * FROM `code_master` where hardcode="OFFTP" AND softcode>0';
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
                </div>
              </div>
              <!-- Bank Account No. -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Name</label>
                <div class="col-sm-6">
                  <input type="text" name="office_name" class="form-control" id="" placeholder="Enter Office Name" required>
                </div>
              </div>

              <!-- Bank Code  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Address</label>
                <div class="col-sm-6">
                  <input type="text" name="office_address" class="form-control" id="" placeholder="Enter Office Address" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Area Code</label>
                <div class="col-sm-6">
                  <input type="text" name="area_code" class="form-control" id="" placeholder="Enter Office Code" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Contact Person</label>
                <div class="col-sm-6">
                  <input type="text" name="office_cont_person" class="form-control" id="" placeholder="Enter Financial Year" required>
                </div>
              </div>
              <!-- Branch name  -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Office Mobile No</label>
                <div class="col-sm-6">
                  <input type="text" name="office_con_mobile_no" class="form-control" id="" placeholder="Enter Office Contact Person" required>
                </div>
              </div>
              <!-- from amount/ to amount -->
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Proj/Wear House/Br. Start or Est. Date</label>
                <div class="col-sm-6">
                  <input type="date" name="office_start_dt" class="form-control" id="" placeholder="Enter Office Start" required>
                </div>
              </div>
              <div class="form-group row">
                <label class="col-sm-2 col-form-label">Proj/Wear House/Br. End or Est. Date </label>
                <div class="col-sm-6">
                  <input type="date" name="office_end_dt" class="form-control" id="" placeholder="Enter Office End" required>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-10">
                  <input type="submit" class="btn btn-primary" name="subBtn" value="submit">
                  <input type="reset" class="btn btn-danger" value="cancel">
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div id="tabs-5">

      </div>
      <div id="tabs-6">

      </div>
      <div id="tabs-7">

      </div>
      <div id="tabs-8">

      </div>
    </div>
</main>
</body>

</html>