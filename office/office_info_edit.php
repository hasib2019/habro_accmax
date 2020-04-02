<?php
require "../auth/auth.php";
require "../database.php";

$id = intval($_GET['id']);
if (isset($_POST['subBtn'])) {
    $org_fin_year_st = $_SESSION['org_fin_year_st'];   // 2017-07-01
    $ss_creator = $_SESSION['username'];
    $ss_org_no = $_SESSION['org_no']; // 9900
    $office_code = $_POST['office_code'];
    $id1 = $_POST['id'];
    $office_name = $_POST['office_name'];
    $office_type = $_POST['office_type'];
    $office_address = $_POST['office_address'];
    $area_code = $_POST['area_code'];
    $office_cont_person = $_POST['office_cont_person'];
    $office_con_mobile_no = $_POST['office_con_mobile_no'];
    $office_start_dt = $_POST['office_start_dt'];
    $office_end_dt = $_POST['office_end_dt'];
    $ss_modifier = $_SESSION['username'];
    $ss_modified_on = $_SESSION['org_eod_bod_proceorg_date'];
    $start_check = date('Y', strtotime($_POST['office_start_dt']));
    $end_check = date('Y', strtotime($_POST['office_end_dt']));
    if ($start_check >= $org_fin_year_st  && $start_check <= $end_check) {
        // if ($org_fin_year_st <= $office_start_dt && $start_check > $end_check) {
        $insertQuery = "UPDATE `office_info` SET `id`='$id', `office_code` = '$office_code', `office_name`='$office_name', `office_type`='$office_type', `office_address`='$office_address',`area_code`='$area_code', `office_cont_person`='$office_cont_person', `office_con_mobile_no`='$office_con_mobile_no', `office_start_dt`='$office_start_dt',`office_end_dt`='$office_end_dt', `ss_creator`='$ss_creator', `ss_modifier`='$ss_modifier', `ss_modified_on`='$ss_modified_on',`ss_org_no`='$ss_org_no' where `id`='$id1'";
        // echo "$insertQuery";
        // exit;
        $conn->query($insertQuery);
        if ($conn->affected_rows == 1) {
            $last_id = $conn->insert_id;
            $massage_success = "Save Successfully!!";
            header("refresh:2;office_info.php");
        } else {
            $massage_failled = "Failled!!";
            header("refresh:2;office_info_edit.php?id=$id");
        }
    } else {
        $massage_failled_date = "Failled!!";
        header("refresh:2;office_info_edit.php?id=$id");
    }
}
require "../source/top.php";
require "../source/sidebar.php";
require "../source/header.php";
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $selectQueryEdit = "SELECT * FROM `office_info` WHERE id='$id'";
    $selectQueryEditResult = $conn->query($selectQueryEdit);
    $rows = $selectQueryEditResult->fetch_assoc();
}

?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Edit Office Information <?php echo $rows['id']; ?> </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <!-- form start  -->
            <form method="post">
                <input type="hidden" name="id" value="<?php echo $rows['id']; ?>">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Office Code <?php echo $_SESSION['org_no']; ?></label>
                    <div class="col-sm-6">
                        <input type="text" name="office_code" class="form-control" id="" value="<?php echo $rows['office_code']; ?>" placeholder="Enter Office Code" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Office Type</label>
                    <div class="col-sm-6">
                        <select name="office_type" class="form-control select2" required>
                            <option value="">-Select Office Type-</option>
                            <?php
                            require '../database.php';
                            $selectQuery = 'SELECT * FROM `code_master` where hardcode="OFFTP" AND softcode>0';
                            $selectQueryResult = $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                            ?>
                                    <option value="<?php echo $row['softcode']; ?>" <?php if ($rows['office_type'] == $row['softcode']) { ?> selected="selected" <?php } ?>><?php echo $row['description']; ?></option>

                            <?php
                                }
                            }
                            ?>
                        </select>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Office Name</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_name" class="form-control" id="" value="<?php echo $rows['office_name']; ?>" placeholder="Enter Office Name" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Office Address</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_address" class="form-control" id="" value="<?php echo $rows['office_address']; ?>" placeholder="Enter Office Address" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Area Code</label>
                    <div class="col-sm-6">
                        <input type="text" name="area_code" class="form-control" id="" value="<?php echo $rows['area_code']; ?>" placeholder="Enter Area Code" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Office Contact Person</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_cont_person" class="form-control" id="" value="<?php echo $rows['office_cont_person']; ?>" placeholder="Enter Contact Person" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Office Mobile No</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_con_mobile_no" class="form-control" id="" value="<?php echo $rows['office_con_mobile_no']; ?>" placeholder="Enter Office Mobile No" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Proj/Wear House/Br. Start or Est. Date </label>
                    <div class="col-sm-6">
                        <input type="date" name="office_start_dt" class="form-control" id="" value="<?php echo $rows['office_start_dt']; ?>" placeholder="Enter Office Start" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Proj/Wear House/Br. End or Est. Date </label>
                    <div class="col-sm-6">
                        <input type="date" name="office_end_dt" class="form-control" id="" value="<?php echo $rows['office_end_dt']; ?>" placeholder="Enter Office End" required>
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
        <?php
        if (!empty($massage_success)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Update Successfully!!",
                "Welcome ' . $_SESSION['username'] . '' . $last_id . '",
                "success"
              )
            </script>';
        } else {
        }
        if (!empty($massage_failled)) {
            echo '<script type="text/javascript">
                Swal.fire(
                    "Failled!!",
                    "Sorry ' . $_SESSION['username'] . '",
                    "success"
                  )
                </script>';
        } else {
        }
        if (!empty($massage_failled_date)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Failled Date!!",
                "Sorry ' . $_SESSION['username'] . '",
                "success"
              )
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
<!-- The java../jcript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<!-- registration_division_district_upazila_jqu_script -->
<script src="../js/select2.full.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('.select2').select2()
    })
    $(document).ready(function() {
        $("#107000").addClass('active');
        $("#100000").addClass('active');
        $("#100000").addClass('is-expanded');

    });
</script>
</body>

</html>