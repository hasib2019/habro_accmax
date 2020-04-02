<?php
require "../auth/auth.php";
require '../database.php';
if (isset($_POST['subBtn'])) {

    $office_code = $_SESSION['office_code'];
    $bank_acc_no = $_POST['bank_acc_no'];
    $bank_code = $_POST['bank_code'];
    $bank_name = $_POST['bank_name'];
    $branch_code = $_POST['branch_code'];
    $branch_name = $_POST['branch_name'];
    $chq_prefix = $_POST['chq_prefix'];
    $bank_chq_no = $_POST['beg_chq_no'];
    $chq_issue_date = $_POST['chq_issue_date'];
    $no_of_leaf = $_POST['no_of_leaf'];
    $chq_status ='1';
    $status_date = $_POST['chq_issue_date'];
    $ss_creator = $_SESSION['username'];
    $ss_creator_on = $_SESSION['org_eod_bod_proceorg_date'];
    $ss_org_no = $_SESSION['org_no'];

    $insertQuery = "INSERT INTO `bank_chq_info` (`office_code`, `bank_acc_no`, `bank_code`,`bank_name`,`branch_code`,`branch_name`,`chq_prefix`,`beg_chq_no`,`chq_issue_date`,`no_of_leaf`,`chq_status`,`status_date`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES ('$office_code','$bank_acc_no','$bank_code','$bank_name','$branch_code','$branch_name','$chq_prefix','$bank_chq_no','$chq_issue_date','$no_of_leaf','$chq_status','$status_date',' $ss_creator','$ss_creator_on','$ss_org_no')";
    $conn->query($insertQuery);
    // echo $insertQuery; exit;
    if ($conn->affected_rows == 1) {
        $message = "Successfully";
    }
    $leaf = $_POST['no_of_leaf'];
    // echo $no_of_le;exit;
    for ($count = 0; $count < $leaf; ++$count) {

        $office = $_SESSION['office_code'];
        $bank_acc = $_POST['bank_acc_no'];
        $bank = $_POST['bank_code'];
        $branch = $_POST['branch_code'];
        $chq_pre = $_POST['chq_prefix'];
        $bank_chq = $_POST['beg_chq_no'];
        $no_of_le = $bank_chq + $count;
        $chq_leaf = $chq_pre . $no_of_le;
        $leaf_status ='1';
        $ss_creator = $_SESSION['username'];
        $ss_creator_on = date('Y-m-d H:i:s', strtotime($_SESSION['org_eod_bod_proceorg_date']));
        // $end_check = date('Y', strtotime($_POST['office_end_dt']));
        $ss_org_no = $_SESSION['org_no'];

        $insertQuery2 = "INSERT INTO `bank_chq_leaf_info` (`office_code`,`bank_code`,`branch_code`,`account_no`,`chq_prefix`,`beg_chq_no`,`chq_leaf_no`,`leaf_status`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES ('$office','$bank','$branch','$bank_acc','$chq_pre','$no_of_le','$chq_leaf','$leaf_status',' $ss_creator','$ss_creator_on','$ss_org_no')";
        $conn->query($insertQuery2);
        //  echo $insertQuery2; exit;
        if ($conn->affected_rows == $no_of_le) {
            $message="Successfully!!";
        }
    }
    header('refresh:1;Chq_book_info.php');
}
require '../source/top.php';
$pid= 802000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require '../source/header.php';
require '../source/sidebar.php';
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Cheque Book Information </h1>
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
                        <!-- Bank Account No. -->
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label"> Account Name</label>
                            <div class="col-sm-6">
                                <select name="bank_acc_no" class="form-control select2" onchange="showGrandRole(this.value)" required>
                                    <option value="">-Select Account Name-</option>
                                    <?php
                                    require '../database.php';
                                    $selectQuery = 'SELECT * FROM `bank_acc_info`';
                                    $selectQueryResult = $conn->query($selectQuery);
                                    if ($selectQueryResult->num_rows) {
                                        while ($row = $selectQueryResult->fetch_assoc()) {
                                    ?>
                                    <?php
                                            echo '<option value="' . $row['bank_acc_no'] . '">' . $row['bank_acc_no'] . '-' . $row['acc_name'] . '</option>';
                                        }
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div id="txtHint">
                        </div>
                        <!-- Bank Address  -->
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">bank Cheque No </label>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-4">
                                        <input type="text" name="chq_prefix" class="form-control" id="" placeholder="Cheque Prefix" required>
                                    </div>
                                    <div class="col-sm-8">
                                        <input type="text" name="beg_chq_no" class="form-control" id="Cheque Number" placeholder="Cheque Number" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- General Account Code  -->
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Chque Issue Date</label>
                            <div class="col-sm-6">
                                <input type="date" name="chq_issue_date" class="form-control" id="" required>
                            </div>
                        </div>
                        <!-- General Account Code  -->
                        <div class="form-group row">
                            <label class="col-sm-2 col-form-label">Number of Leaf</label>
                            <div class="col-sm-6">
                                <select name="no_of_leaf" class="form-control select2" required>
                                    <option value="10">10</option>
                                    <option value="20">20</option>
                                    <option value="30">30</option>
                                    <?php
                                    require '../database.php';
                                    $selectQuery = 'SELECT * FROM `code_master` where hardcode="bsize" AND softcode>0';
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
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <input type="submit" class="btn btn-primary" name="subBtn" value="submit">
                                <input type="reset" class="btn btn-danger" name="subBtn" value="cancel">
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
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
    ?>
    <div class="table-responsive border-dark border-top">
        <table class="table table-hover">
            <tr class="active">
                <th>No</th>
                <th>Bank Account No</th>
                <th>Bank Name</th>
                <th>Branch Name</th>
                <th>Cheque No</th>
                <th>Date</th>
                <th>Leaf Number</th>
            </tr>
            <?php
            $no = 1;
            $sql = 'SELECT * FROM bank_chq_info';
            $query = $conn->query($sql);
            while ($rows = $query->fetch_assoc()) {
                echo
                    '<tr>
									
									<td>' . $no++ . '</td>
									<td>' . $rows['bank_acc_no'] . '</td>
									<td>' . $rows['bank_code'] . ' ' . $rows['bank_name'] . '</td>
									<td>' . $rows['branch_code'] . ' ' . $rows['branch_name'] . '</td>
									<td>' . $rows['chq_prefix'] . ' ' . $rows['beg_chq_no'] . '</td>
                                    <td>' . $rows['chq_issue_date'] . '</td>
                                    <td>' . $rows['no_of_leaf'] . "</td>
								</tr>";
            }
            ?>
        </table>
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
<script src="../js/bootstrap.min"></script>
<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()
    })
    //====getAccountAddress====
    function showGrandRole(str) {
        if (str == "") {
            document.getElementById("txtHint").innerHTML = "";
            return;
        } else {
            if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {
                // code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("txtHint").innerHTML = this.responseText;
                }
            };
            xmlhttp.open("GET", "getAccountAddress.php?q=" + str, true);
            xmlhttp.send();
        }
    }
    //====getAccountAddress ====
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#802000").addClass('active');
        $("#800000").addClass('active');
        $("#800000").addClass('is-expanded');
    });
</script>
</body>

</html>