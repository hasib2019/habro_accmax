<?php
require "../auth/auth.php";
require "../database.php";
if (isset($_POST['subBtn'])) {
    $org_fin_year_st = $_SESSION['org_fin_year_st'];
    $office_code = $_POST['office_code'];
    $office_name = $_POST['office_name'];
    $office_type = $_POST['office_type'];
    $office_address = $_POST['office_address'];
    $area_code = $_POST['area_code'];
    $office_cont_person = $_POST['office_cont_person'];
    $office_con_mobile_no = $_POST['office_con_mobile_no'];
    $office_start_dt = $_POST['office_start_dt'];
    $office_end_dt = $_POST['office_end_dt'];
    $ss_creator = $_SESSION['username'];
    $ss_created_on = $_SESSION['org_eod_bod_proceorg_date'];
    $ss_org_no = $_SESSION['org_no'];
    $start_check = date('Y', strtotime($_POST['office_start_dt']));
    $end_check = date('Y', strtotime($_POST['office_end_dt']));
    if ($start_check >= $org_fin_year_st  && $start_check <= $end_check) {
        $insertQuery = "INSERT INTO `office_info` (`id`,`office_code`, `office_name`, `office_type`,`office_address`,`office_cont_person`,`office_con_mobile_no`,`office_start_dt`,`office_end_dt`,`area_code`,`ss_creator`,`ss_created_on`,`ss_org_no`) VALUES (NULL,'$office_code','$office_name','$office_type','$office_address','$office_cont_person','$office_con_mobile_no','$office_start_dt','$office_end_dt','$area_code','$ss_creator','$ss_created_on','$ss_org_no')";
        $conn->query($insertQuery);
        if ($conn->affected_rows == 1) {
            $last_id = $conn->insert_id;
            $massage_success = "Save Successfully!!";
        } else {
            $massage_failled = "Failled!!";
        }
    } else {
        $massage_failled_date = "Failled Date!!";
    }
    header("refresh:1;office_info.php");
}
require "../source/top.php";
$pid= 205000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require "../source/sidebar.php";
require "../source/header.php";
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Office Setup </h1>
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
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> Office Code</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_code" class="form-control" id="" placeholder="Enter Office Code" required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> Office Type</label>
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
                    <label class="col-sm-2 col-form-label"> Name</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_name" class="form-control" id="" placeholder="Enter Office Name" required>
                    </div>
                </div>

                <!-- Bank Code  -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> Address</label>
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
                    <label class="col-sm-2 col-form-label"> Contact Person</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_cont_person" class="form-control" id="" placeholder="Enter Contact Person" required>
                    </div>
                </div>
                <!-- Branch name  -->
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label"> Mobile No</label>
                    <div class="col-sm-6">
                        <input type="text" name="office_con_mobile_no" class="form-control" id="" placeholder="Enter Office Mobile No" required>
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
        <?php
        if (!empty($massage_success)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Save Successfully!!",
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
        <div class="table-responsive border-dark border-top">
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
            <!-- <a data-id='" . $rows['id'] . "' id='delete_id' class='btn btn-danger btn-sm'<span class='glyphicon glyphicon-trash' href='javascript:void(0)'></span>delete</a> -->
</main>
<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- The java../jcript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<script src="../js/select2.full.min.js"></script>
<script type="text/javascript">
    $(function() {
        $('.select2').select2()
    })
    $(document).ready(function() {
        $("#205000").addClass('active');
        $("#200000").addClass('active');
        $("#200000").addClass('is-expanded');
    });
</script>
<script>
    $(document).ready(function() {
        $(document).on('click', '#delete_id', function(e) {
            var id = $(this).data('id');
            SwalDelete(id);
            e.preventDefault();
        });
    });

    function SwalDelete(id) {
        Swal.fire({
            title: 'Are you sure?',
            text: "It will be deleted permanently!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
            showLoaderOnConfirm: true,
            preConfirm: function() {
                return new Promise(function(resolve) {
                    $.ajax({
                            url: 'office_info_delete.php',
                            type: 'POST',
                            data: 'id=' + id,
                            dataType: 'json'
                        })
                        .done(function(response) {
                            Swal.fire('Deleted!', 'Your file has been deleted.', 'success')
                        })
                        .fail(function() {
                            Swal.fire('Oops...', 'Something went wrong with ajax !', 'error')
                        });
                });
            },
        });
    }
</script>
<?php
$conn->close();
?>
</body>

</html>