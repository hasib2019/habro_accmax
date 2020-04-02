<?php
require "../auth/auth.php";
require "../database.php";

if (isset($_POST['subBtn'])) {
    // $trn_no = $_POST['trn_no'];
    $office_code = $_POST['office_code'];
    $year_code = $_POST['year_code'];
    $batch_no = $_POST['batch_no'];
    $tran_date = $_POST['tran_date'];
    $by_account = $_POST['by_account'];
    $toaccount = $_POST['toaccount'];
    $tran_mode = $_POST['tran_mode'];
    $vaucher_typedr = $_POST['vtdr'];
    $vaucher_typecr = $_POST['vtcr'];
    $particular = $_POST['particular'];
    $draccount = $_POST['draccount'];
    $bank_name = $_POST['bank_name'];
    $cheque_no = $_POST['cheque_no'];
    $cheque_date = $_POST['cheque_date'];
    $ss_creator = $_POST['ss_creator'];
    $ss_org_no = $_POST['ss_org_no'];

    // insert dr 
    $insertQuery = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`, `description`, `dr_amt_loc`,`bank_name`,`cheque_no`,`cheque_date`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$toaccount','$tran_mode','$vaucher_typedr','$particular','$draccount','$bank_name','$cheque_no','$cheque_date','$ss_creator',now(),'$ss_org_no')";
    $conn->query($insertQuery);
    // echo $insertQuery; exit;
    if ($conn->affected_rows == 1) {
        $messagecr = "cr Save Successfully";
    }
    // update cr 
    $updateQuery = "UPDATE `gl_acc_code` SET acc_bal_loc=acc_bal_loc-'$draccount' where acc_code='$toaccount'";
    $conn->query($updateQuery);
    if ($conn->affected_rows == 1) {
        $messagescr = "Updated successfully";
        // header("Location:user_menu.php");
    }
    // update leaf no 
    $updateQuerys = "UPDATE `bank_chq_leaf_info` SET leaf_status=0, status_date=now() where chq_leaf_no='$cheque_no'";
    $conn->query($updateQuerys);
    if ($conn->affected_rows == 1) {
        $messagescrck = "Updated successfully";
        // header("Location:user_menu.php");
    }
    // cr
    $insertQuery = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`, `description`, `cr_amt_loc`,`bank_name`,`cheque_no`,`cheque_date`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$by_account','$tran_mode','$vaucher_typecr','$particular','$draccount','$bank_name','$cheque_no','$cheque_date','$ss_creator',now(),'$ss_org_no')";
    $conn->query($insertQuery);
    // echo $insertQuery; exit;
    if ($conn->affected_rows == 1) {
        $message = "Save Successfully";
    }
    // update dr 
    $updateQuery = "UPDATE `gl_acc_code` SET acc_bal_loc=acc_bal_loc+'$draccount' where acc_code='$by_account'";
    $conn->query($updateQuery);
    if ($conn->affected_rows == 1) {
        $messages = "Updated successfully";
        header("refresh:1;../transation/payment_voucher_bank.php");
    }
}
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i>Cash Payment</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
        </ul>
    </div>
    <div class="row">
        <!-- ----------------code here---------------->
        <div class="c_main">

            <!-- head -->
            <div class="c_head">
                <!-- form start  -->
                <form method="post">
                    <div class="c_main_left"><br>
                        <!-- batch_no -->
                        <?php
                        $querys = "insert into bach_no (username) values ('$_SESSION[username]')";
                        $returns = mysqli_query($conn, $querys);
                        $lastRows = $conn->insert_id;
                        ?>
                        <div class="org_row org_group">
                            <label class="org_2 org_label">Payment Voucher No</label>
                            <div class="org_10">
                                <input type="text" name="batch_no" readonly class="org_5 org_form" autofocus placeholder="ID" value="<?php echo $lastRows;?>">
                            </div>
                            <label class="org_2 org_label">Payment Type</label>
                            <div class="org_10" style="margin-top: 5px;">
                                <a href="../transation/payment_voucher.php"><button type="button" class="btn btn-primary">Cash Payment</button></a>
                                <a href="../transation/payment_voucher_Bank.php"><button type="button" class="btn btn-dark" disabled>Cheque Payment</button></a>
                            </div>
                        </div>
                    </div>
                    <div class="c_main_right">
                        <div class="org_row org_group">
                            <label class="org_4 org_label">Transaction Date</label>
                            <div class="org_6">
                                <!-- <input type="date" name="tran_date" id="date" class="org_form" value="<?php echo $_SESSION['org_eod_bod_proceorg_date']; ?>" required> -->
                                <input type="date" name="tran_date" id="date" class="org_form" value="<?php echo date('Y-m-d'); ?>" required>
                            </div>
                        </div>
                        <div class="org_row org_group">
                            <label class="org_4 org_label">User ID</label>
                            <div class="org_6">
                                <?php if (isset($_SESSION['username'])) : ?>
                                    <input type="text" name="ss_creator" id="" value="<?php echo $_SESSION['username']; ?>" class="org_form" readonly>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
            </div>
            <!-- head close  -->
            <!-- maid body start  -->
            <div class="c_body">
                <div class="c_body_h_left">
                    <!-- ----------------------------------------- -->
                    <?php
                    require_once("../dbcontroller.php");
                    $db_handle = new DBController();
                    $query = "SELECT * FROM `gl_acc_code` where postable_acc= 'Y' AND acc_type=2 ORDER by acc_code";
                    $results = $db_handle->runQuery($query);
                    ?>
                    <!-- ----------------------------------------- -->
                    <div class="org_row org_group">
                        <label class="org_2 org_label">By Account</label>
                        <div class="org_4">
                            <select name="by_account" id="division-list" required class="org_form select2" style="width: 100%" onChange="getDistrict(this.value);">
                                <option value="">Select Account</option>
                                <?php
                                foreach ($results as $division) {
                                ?>
                                    <option value="<?php echo $division["acc_code"]; ?>"><?php echo $division["acc_head"]; ?></option>
                                <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="c_body_h_right">
                    <div class="org_row org_group">
                        <label class="org_4 org_label">A/C Balance</label>
                        <div class="org_6">
                            <input type="text" name="" id="" class="org_form" readonly>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <!-- 2st section  -->
            <div class="c_form_div">
                <div class="form-row" style="width:98%">
                    <div class="form-group col-md-2">
                        <label for="inputPassword4">To Account</label>

                        <select name="toaccount" required id="" class="form-control">
                            <option value="">---Select---</option>
                            <?php
                            $selectQuery = "SELECT * FROM `gl_acc_code` where postable_acc= 'Y' AND acc_type!=1 AND acc_type!=2 ORDER by acc_code";
                            $selectQueryResult =  $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $row['acc_code'] . '">'  . $row['acc_head'] . '</option>';
                                }
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputPassword4">Bank Account Name</label>
                        <select name="bank_name" id="bank-list" required class="form-control" onChange="getUpazilas(this.value);">
                            <option value="">Select Bank Account</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputPassword4">Cheque No</label>
                        <select name="cheque_no" id="cheque-list" required class="form-control">
                            <option value="">Select Cheque No</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputPassword4">Cheque Date</label>
                        <input type="date" class="form-control" name="cheque_date">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputPassword4">Particular</label>
                        <input type="text" class="form-control" name="particular">
                    </div>
                    <div class="form-group col-md-1">
                        <label for="inputPassword4">Dr. Amount</label>
                        <input type="text" class="form-control" name="draccount">
                    </div>
                    <div class="form-group col-md-1">
                        <label for="inputPassword4">Cr. Amount</label>
                        <input type="text" class="form-control" name="craccount" disabled>
                    </div>
                </div>
            </div>
            <!-- hidden  -->
            <input type="hidden" class="form-control" name="tran_mode" value="CHQP">
            <input type="hidden" class="form-control" name="office_code" value="<?php echo $_SESSION['office_code']; ?>">
            <input type="hidden" class="form-control" name="year_code" value="<?php echo $_SESSION['org_fin_year_st']; ?>">
            <input type="hidden" class="form-control" name="vtdr" value="DR">
            <input type="hidden" class="form-control" name="vtcr" value="CR">
            <input type="hidden" class="form-control" name="ss_org_no" value="<?php echo $_SESSION['org_no']; ?>">
            <!-- /////////////////////////////////////  -->
            <div class="text-right" style="margin-right:20px">
                <input type="submit" value="Submit" name="subBtn" class="btn btn-success">
            </div>
            </form>
            <!-- form end  -->
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
        } else if (!empty($messagecr)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Save Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
        } else if (!empty($messages)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Update Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
        } else if (!empty($messagescr)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Update Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
        } else if (!empty($messagescrck)) {
            echo '<script type="text/javascript">
            Swal.fire(
                "Update Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
        } else {
        }
        ?>
    </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- The java script plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<!-- serch option -->
<script src="../js/select2.full.min.js"></script>
<script>
    function getDistrict(val) {
        $.ajax({
            type: "POST",
            url: "getBank_info.php",
            data: 'acc_code=' + val,
            success: function(data) {
                $("#bank-list").html(data);
                getUpazilas();
            }
        });
    }

    function getUpazilas(val) {
        $.ajax({
            type: "POST",
            url: "getBank_cheque_info.php",
            data: 'bank_acc_no=' + val,
            success: function(data) {
                $("#cheque-list").html(data);
            }
        });
    }
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()

    })
</script>
<script>
    $(document).ready(function() {
        $("#402000").addClass('active');
        $("#400000").addClass('active');
        $("#400000").addClass('is-expanded');
    });
</script>
<?php
$conn->close();
?>
</body>

</html>