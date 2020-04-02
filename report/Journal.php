<?php
require "../auth/auth.php";
require "../database.php";
require "../source/top.php";
$pid= 701000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Journal</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <form method="POST">
                <div>
                    <label for="">From</label>
                    <input type="date" name="startdate" id="" value="<?php echo $startdate; ?>">
                    <label for="">To</label>
                    <input type="date" name="enddate" id="" value="<?php echo $enddate; ?>">
                    <input type="submit" name="submit" value="Submit">
                </div>
            </form>
            <?php
            require '../report/report_header.php';
            ?>
            <h3 style="text-align:center">Journal Sheet</h3>

            <?php
            if (isset($_POST['submit'])) {
                $startdate = $_POST["startdate"];
                $enddate = $conn->escape_string($_POST["enddate"]);
            ?>
                <h5 style="text-align: center">From <?php echo $startdate; ?> To <?php echo $enddate; ?></h5>
                <div class="pull-right">
                    <a id='print' title="Print" class="btn btn-danger" target="_blank" href="jaurnal_pdf.php?date=BETWEEN '<?php echo $startdate; ?>' AND '<?php echo $enddate; ?>'"></i>Print</a>
                    <a id='print' title="Print" class="btn btn-danger" target="_blank" href="jaurnal_pdf.php?date=BETWEEN '<?php echo $startdate; ?>' AND '<?php echo $enddate; ?>'"></i>PDF</a>
                    <a id='print' title="Print" class="btn btn-danger" href="jaurnal_excel.php?date=BETWEEN '<?php echo $startdate; ?>' AND '<?php echo $enddate; ?>'"></i>Excel</a>
                    <a id='print' title="Print" class="btn btn-danger" href="jaurnal_word.php?date=BETWEEN '<?php echo $startdate; ?>' AND '<?php echo $enddate; ?>'"></i>docx</a>
                    <a id='print' title="Print" class="btn btn-danger" href="jaurnal_csv.php?date=BETWEEN '<?php echo $startdate; ?>' AND '<?php echo $enddate; ?>'"></i>csv</a>
                </div>
                <table class="table table-hover">
                    <tr class="active">
                        <th>Date</th>
                        <th>Transction type </th>
                        <th>Transction No </th>
                        <th>Voucher No. </th>
                        <th>Account Number </th>
                        <th>Account Head </th>
                        <th>Particular </th>
                        <th>Debit </th>
                        <th>Credit</th>
                        <th>Action</th>
                    </tr>
                <?php
                $sql = "SELECT tran_details.batch_no,tran_details.tran_no,tran_details.gl_acc_code,tran_details.dr_amt_loc,tran_details.tran_date,tran_details.tran_mode,tran_details.description,tran_details.cr_amt_loc,gl_acc_code.acc_head,gl_acc_code.acc_code FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code  AND (tran_details.tran_date BETWEEN '$startdate' AND '$enddate') ORDER BY tran_details.batch_no";
                $query = $conn->query($sql);
                while ($rows = $query->fetch_assoc()) {
                    echo
                        "<tr>
                                    <td>" . $rows['tran_date'] . "</td>
									<td>" . $rows['tran_mode'] . "</td>
									<td>" . $rows['tran_no'] . "</td>
									<td>" . $rows['batch_no'] . "</td> 
									<td>" . $rows['gl_acc_code'] . "</td>
                                    <td>" . $rows['acc_head'] . "</td>
                                    <td>" . $rows['description'] . "</td>
									<td>" . $rows['dr_amt_loc'] . "</td>
									<td>" . $rows['cr_amt_loc'] . "</td>
								    <td>
                                    <a href='voucher_view.php?recortid=" . $rows['batch_no'] . "' target='blank' class='btn btn-success btn-sm><span class='glyphicon glyphicon-edit'></span>Voucher</a>
									</td>
								</tr>";
                }
            } else {
                echo "<h1 style='color:red;text-align:center;margin-top:150px'>Please Select From Date and To Date</h1>";
            }

                ?>
                </table>
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

<script type="text/javascript">
    $(document).ready(function() {
        $("#701000").addClass('active');
        $("#700000").addClass('active');
        $("#700000").addClass('is-expanded');
    });
</script>
</body>

</html>