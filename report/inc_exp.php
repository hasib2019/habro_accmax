<?php
require "../auth/auth.php";
require "../database.php";
require '../source/top.php';
$pid= 704000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require '../source/header.php';
require '../source/sidebar.php';
?>
<style>
    .cols6 {
        -webkit-box-flex: 0;
        -ms-flex: 0;
        flex: 45%;
        max-width: 50%;
    }
    .bor,
    thead,
    tr,
    th,
    td {
        border-style: solid;
        border-color: black;
        border-width: 1px;
    }
</style>
<main class="app-content">
    <div class="app-title">
        <h1><i class="fa fa-dashboard"></i> Income and Expenditure Statement </h1>

    </div>
    <form method="POST">
        <div>
            <label for="">As on from</label>
            <input type="date" name="startdate" id="" required>
            <label for="">To</label>
            <input type="date" name="enddate" id="" required>
            <input type="submit" name="submit" id="submitBtn" class="btn-info" value="Report View">
        </div>
    </form>
    <div class="row">
        <div class="col-md-12">
            <?php
            require '../report/report_header.php';
            ?>
            <h3 style="text-align:center">Income and Expenditure Statement </h3>
            <?php
            if (isset($_POST['submit'])) {
                $startdate = $_POST["startdate"];
                $enddate = $conn->escape_string($_POST["enddate"]);
            ?>
                <h5 style="text-align: center">From <?php echo $startdate; ?> To <?php echo $enddate; ?></h5>
                <div class="row" style="margin-bottom: 5px">
                    <div class="col-12">
                        <div class="pull-right">
                            <a id='print' title="Print" class="btn btn-danger" target="_blank" href="inc_exp_print.php?from=<?php echo $startdate; ?>&to=<?php echo $enddate; ?>"></i>Print</a>
                            <a id='print' title="Print" class="btn btn-danger" href="inc_exp_pdf.php?from=<?php echo $startdate; ?>&to=<?php echo $enddate; ?>"></i>PDF</a>
                            <a id='print' title="Print" class="btn btn-danger" href="inc_exp_word.php?from=<?php echo $startdate; ?>&to=<?php echo $enddate; ?>"></i>docx</a>
                            <a id='print' title="Print" class="btn btn-danger" href="inc_exp_excel.php?from=<?php echo $startdate; ?>&to=<?php echo $enddate; ?>"></i>Excel</a>
                            <a id='print' title="Print" class="btn btn-danger" href="inc_exp_word.php?from=<?php echo $startdate; ?>&to=<?php echo $enddate; ?>"></i>csv</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="cols6">
                        <table style="width:100%" class="bor">
                            <thead>
                                <tr style="text-align:center">
                                    <th colspan="4">Income </th>
                                </tr>
                                <tr>
                                    <th>Date</th>
                                    <th>A/C Code</th>
                                    <th>Title</th>
                                    <th>Balance</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $startdate = $_POST['startdate'];
                                $enddate = $conn->escape_string($_POST['enddate']);
                                $sql = "SELECT tran_details.tran_no,tran_details.batch_no,tran_details.gl_acc_code,tran_details.tran_mode,tran_details.dr_amt_loc,tran_details.tran_date,tran_details.tran_mode,tran_details.description,tran_details.cr_amt_loc,gl_acc_code.category_code, gl_acc_code.acc_head,gl_acc_code.acc_code, SUM(tran_details.cr_amt_loc-tran_details.dr_amt_loc) as balance FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code AND gl_acc_code.category_code='3' AND (tran_details.tran_date BETWEEN '$startdate' AND '$enddate') group by tran_details.gl_acc_code order by tran_details.gl_acc_code";
                                $query = $conn->query($sql);
                                while ($row = $query->fetch_assoc()) {
                                ?>
                                    <tr>
                                        <td><?php echo $row['tran_date']; ?></td>
                                        <td><?php echo $row['acc_code']; ?></td>
                                        <td><?php echo $row['acc_head']; ?></td>
                                        <td style="text-align: right"><?php echo $row['balance']; ?></td>
                                    <?php
                                }
                                    ?>
                            </tbody>
                            <tfoot>
                                <?php
                                $sqls_total_inc = "SELECT tran_details.gl_acc_code, SUM(tran_details.dr_amt_loc) as dr_amt_loc,tran_details.tran_date, SUM(tran_details.cr_amt_loc) as cr_amt_loc,  gl_acc_code.acc_head,gl_acc_code.acc_code, SUM(tran_details.dr_amt_loc-tran_details.cr_amt_loc) as balance FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code AND gl_acc_code.category_code='3' AND (tran_details.tran_date BETWEEN '$startdate' AND '$enddate')";
                                $return_inc = mysqli_query($conn, $sqls_total_inc);
                                $result_inc = mysqli_fetch_assoc($return_inc);
                                $dr_amt_loc_inc = $result_inc['dr_amt_loc'];
                                $cr_amt_loc_inc = $result_inc['cr_amt_loc'];
                                $total_inc = $dr_amt_loc_inc - $cr_amt_loc_inc;
                                ?>
                                <tr style="text-align: right; font-weight:bold">
                                    <td colspan="3">Total</td>
                                    <td><?php echo $total_inc; ?></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="cols6">
                        <table style="width:100%" class="bor">
                            <thead>
                                <tr style="text-align:center">
                                    <th colspan="4">Expenditure</th>
                                </tr>
                                <tr>
                                    <th>Date</th>
                                    <th>A/C Code</th>
                                    <th>Title</th>
                                    <th>Balance</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $sqls = "SELECT tran_details.tran_no,tran_details.batch_no,tran_details.gl_acc_code,tran_details.tran_mode,tran_details.dr_amt_loc,tran_details.tran_date,tran_details.tran_mode,tran_details.description,tran_details.cr_amt_loc,gl_acc_code.category_code, gl_acc_code.acc_head,gl_acc_code.acc_code, SUM(tran_details.dr_amt_loc-tran_details.cr_amt_loc) as balance FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code AND gl_acc_code.category_code='4' AND (tran_details.tran_date BETWEEN '$startdate' AND '$enddate') group by tran_details.gl_acc_code order by tran_details.gl_acc_code";
                                $querys = $conn->query($sqls);
                                while ($rows = $querys->fetch_assoc()) {
                                ?>
                                    <td><?php echo $rows['tran_date']; ?></td>
                                    <td><?php echo $rows['acc_code']; ?></td>
                                    <td><?php echo $rows['acc_head']; ?></td>
                                    <td style="text-align: right"><?php echo $rows['balance']; ?></td>
                                    </tr>
                                <?php
                                } ?>
                            </tbody>
                            <tfoot>
                                <?php
                                $sqls_total_exp = "SELECT tran_details.gl_acc_code, SUM(tran_details.dr_amt_loc) as dr_amt_loc,tran_details.tran_date, SUM(tran_details.cr_amt_loc) as cr_amt_loc,  gl_acc_code.acc_head,gl_acc_code.acc_code, SUM(tran_details.dr_amt_loc-tran_details.cr_amt_loc) as balance FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code AND gl_acc_code.category_code='4' AND (tran_details.tran_date BETWEEN '$startdate' AND '$enddate')";
                                $return_exp = mysqli_query($conn, $sqls_total_exp);
                                $result_exp = mysqli_fetch_assoc($return_exp);
                                $dr_amt_loc_exp = $result_exp['dr_amt_loc'];
                                $cr_amt_loc_exp = $result_exp['cr_amt_loc'];
                                $total_exp = $dr_amt_loc_exp - $cr_amt_loc_exp;
                                ?>
                                <tr style="text-align: right; font-weight:bold">
                                    <td colspan="3">Total</td>
                                    <td><?php echo $total_exp; ?></td>
                                </tr>
                            </tfoot>
                        <?php
                    } else {
                        echo "<h1 style='color:red;text-align:center;margin-top:150px'>Please Select From Date and To Date</h1>";
                    }
                        ?>
                        </table>
                    </div>
                </div>
        </div>
</main>
<?php
require "report_footer.php";
?>

<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- The java../jcript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<!-- registration_division_district_upazila_jqu_script -->

<script src="../js/select2.full.min.js"></script>

<script>
    $(function() {
        //Initialize Select2 Elements
        $('.select2').select2()

    })
</script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#704000").addClass('active');
        $("#700000").addClass('active');
        $("#700000").addClass('is-expanded');
    });
</script>

</body>

</html>