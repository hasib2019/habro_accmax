<?php
require "../auth/auth.php";
require "../database.php";
require '../source/top.php';
$pid= 705000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require '../source/header.php';
require '../source/sidebar.php';
?>
<main class="app-content">
    <div class="app-title">
        <div style="width: 100%;">
            <h1><i class="fa fa-dashboard"></i> Profit And Loss Statement </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form method="POST">
                <div>
                    <label for="">As on Date :</label>
                    <input type="date" name="enddate" id="" value="" required>
                    <input type="submit" name="submit" id="submitBtn" class="btn-info" value="Report View">
                </div>
            </form>
            <?php
            $org_name = $_SESSION['org_name'];
            $org_logo = $_SESSION['org_logo'];
            ?>
            <div>
                <h2 style="text-align:center"><img src="../upload/<?php echo $org_logo; ?>" alt="logo" style="width:40px;height:40px;"> <?php echo $org_name; ?></h2>
            </div>
            <div>
                <h4 style="text-align:center">Profit And Loss Statement</h4>
                <h5 style="text-align:center">
                    <?php
                    if (isset($_POST['submit'])) {
                        $enddate = $conn->escape_string($_POST['enddate']);
                        $enddateexp = $conn->escape_string($_POST['enddate']);
                        if (isset($enddate)) {
                            echo $enddate;
                        }
                    ?>
                </h5>
            </div>
            <div class="pull-right">
                <a id='print' title="Print" class="btn btn-danger" target="_blank" href="profit_loss_word.php?date=<?php echo $enddate; ?>"><i class="fa fa-print"></i>Print</a>
                <a id='print' title="Print" class="btn btn-danger" target="_blank" href="profit_loss_word.php?date=<?php echo $enddate; ?>"></i>PDF</a>
                <a id='print' title="Print" class="btn btn-danger" target="_blank" href="profit_loss_word.php?date=<?php echo $enddate; ?>"></i>docx</a>
                <a id='print' title="Print" class="btn btn-danger" href="profit_loss_word.php?date=<?php echo $enddate; ?>"></i>Excel</a>
                <a id='print' title="Print" class="btn btn-danger" href="profit_loss_word.php?date=<?php echo $enddate; ?>"></i>csv</a>
            </div> <br><br>
            <table style="width:100%" border="1">
                <thead>
                    <tr style="text-align:center;width:100%">
                        <th>Total Income</th>
                        <th>Total Expense</th>
                        <th>Total Profit</th>
                        <th>Total loss</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $sql_inc = "SELECT gl_acc_code.acc_code, gl_acc_code.acc_head,gl_acc_code.category_code, gl_acc_code.acc_level, tran_details.gl_acc_code, sum(tran_details.cr_amt_loc) as cr_amt_loc, sum(tran_details.dr_amt_loc) as dr_amt_loc, tran_details.tran_date, SUM(tran_details.dr_amt_loc- tran_details.cr_amt_loc) as balance FROM gl_acc_code JOIN tran_details ON gl_acc_code.acc_code=tran_details.gl_acc_code AND tran_details.tran_date< '$enddate' AND gl_acc_code.category_code = '3' group by gl_acc_code.category_code
                        ";
                        $query_inc = $conn->query($sql_inc);
                        $rows_inc = $query_inc->fetch_assoc();
                    ?>
                    <tr style="text-align:center">
                        <td style="width:25%;height: 100px;background-color: red"><strong> <?php echo  $rows_inc['cr_amt_loc']; ?></strong></td>
                        <td style="width:25%;height: 100px;background-color: green"><strong><?php echo  $rows_inc['cr_amt_loc']; ?></strong></td>
                        <td style="width:25%;height: 100px;background-color: gray"><strong><?php echo  $rows_inc['cr_amt_loc']; ?></strong></td>
                        <?php
                        $sql_exp = "SELECT gl_acc_code.acc_code, gl_acc_code.acc_head,gl_acc_code.category_code, gl_acc_code.acc_level, tran_details.gl_acc_code, sum(tran_details.cr_amt_loc) as cr_amt_loc, sum(tran_details.dr_amt_loc) as dr_amt_loc, tran_details.tran_date, SUM(tran_details.dr_amt_loc- tran_details.cr_amt_loc) as balance FROM gl_acc_code JOIN tran_details ON gl_acc_code.acc_code=tran_details.gl_acc_code AND tran_details.tran_date< '$enddateexp' AND gl_acc_code.category_code = '4' group by gl_acc_code.category_code
                        ";
                        $query_exp = $conn->query($sql_exp);
                        $rows_exp = $query_exp->fetch_assoc();
                        ?>
                        <td style="width:25%;height: 100px;background-color: yellow"><strong><?php echo  $rows_exp['dr_amt_loc']; ?></strong></td>
                    </tr>

                </tbody>
            </table>
        <?php
                    } else {
                        echo "<h3 style='color:red;text-align:center;margin-top:150px'>Please Select Date </h3>";
                    }
        ?>
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
        $("#705000").addClass('active');
        $("#700000").addClass('active');
        $("#700000").addClass('is-expanded');
    });
</script>
</body>

</html>