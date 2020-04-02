<?php
require "../auth/auth.php";
require "../database.php";
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Voucher </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <!-- <form><input type="button" value="GO BACK " onclick="history.go(-1);return true;" /></form> -->
            <div class="pull-right">
                <a title="Print" class="btn btn-primary" onclick="history.go(-1);return true;">Jaurnal</a>
                <a id='print' title="Print" class="btn btn-danger" href="javascript:window.print()"><i class="fa fa-print"></i>Print</a>
                <a id='print' title="Print" class="btn btn-danger" target="_blank" href="voucher_view_pdf.php?recortid=<?php echo $_GET['recortid']; ?>"></i>PDF</a>
                <a id='print' title="Print" class="btn btn-danger" href="voucher_view_pdf.php?recortid=<?php echo $_GET['recortid']; ?>"></i>Excel</a>
                <!-- <form method="POST" action="jaurnal_excel.php">
                    <input type="submit" name="excel" title="Print" value="Excel" class="btn btn-danger">
                </form> -->
                <a id='print' title="Print" class="btn btn-danger" href="voucher_view_word.php?recortid=<?php echo $_GET['recortid']; ?>"></i>docx</a>
                <a id='print' title="Print" class="btn btn-danger" href="voucher_view_pdf.php?recortid=<?php echo $_GET['recortid']; ?>"></i>csv</a>
            </div>
        </ul>
    </div>
    <?php
    $sql2 = "SELECT `org_logo`, `org_name` FROM `org_info`";
    $returnD = mysqli_query($conn, $sql2);
    $result = mysqli_fetch_assoc($returnD);
    ?>
    <div>
        <!-- <img src="../upload/logo.png" alt="logo" style="width:100px;higher:100px;text-align:center">  -->
        <h2 style="text-align:center"><img src="../upload/<?php echo $result['org_logo']; ?>" alt="logo" style="width:40px;height:40px;"> <?php echo $result['org_name']; ?></h2>
    </div>
    <div>
        <h4 style="text-align:center">Voucher </h4>
        <?php
        if (isset($_GET['recortid'])) {
            // $batch =$_GET['batch_no'];
            $sql = "SELECT tran_details.batch_no, tran_details.tran_no,tran_details.tran_mode, tran_details.tran_date,tran_details.gl_acc_code,gl_acc_code.acc_type,tran_details.dr_amt_loc,tran_details.cr_amt_loc,tran_details.description,gl_acc_code.acc_head,gl_acc_code.acc_code FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code AND tran_details.batch_no='" . $_GET['recortid'] . "'";
            $query = $conn->query($sql);
            $row = $query->fetch_assoc();
        ?>
            <div class="row">
                <div class="col-md-12">
                    <br>
                    <div class="maingl">
                        <div class="leftgl">
                            <p>Voucher Date : <?php echo $row['tran_date']; ?></p>
                            <p>Voucher Type : <?php echo $row['tran_mode']; ?></p>
                            <p>Narration : <?php echo $row['description']; ?></p>
                        </div>

                        <div class="rightgl">
                            <p>Voucher Number :<?php echo $row['batch_no']; ?></p>

                        </div>
                    </div>
                    <hr>
                    <table class="table table-hover" border="2">
                        <tr class="active">
                            <th>Trx. No </th>
                            <th>GL A/C Code </th>
                            <th>A/C Head </th>
                            <th>Debit </th>
                            <th>Credit</th>
                        </tr>
                        <tbody>
                            <?php
                            $sql2 = "SELECT tran_details.batch_no, tran_details.tran_no, tran_details.tran_date,tran_details.gl_acc_code,gl_acc_code.acc_type,tran_details.dr_amt_loc,tran_details.cr_amt_loc,tran_details.description,gl_acc_code.acc_head,gl_acc_code.acc_code FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code AND tran_details.batch_no='" . $_GET['recortid'] . "' ORDER BY tran_details.tran_no";
                            $query2 = $conn->query($sql2);
                            while ($rows = $query2->fetch_assoc()) {
                            ?>
                                <tr>
                                    <td> <?php echo $rows['tran_no']; ?></td>
                                    <td> <?php echo $rows['gl_acc_code']; ?></td>
                                    <td> <?php echo $rows['acc_head']; ?></td>
                                    <td style='text-align:right'> <?php echo $rows['dr_amt_loc']; ?></td>
                                    <td style='text-align:right'> <?php echo $rows['cr_amt_loc']; ?></td>
                                </tr>
                        <?php
                            }
                        }
                        // $conn->close();
                        ?>
                        </tbody>
                        <tfoot>
                            <?php
                            if (isset($_GET['recortid'])) {
                                $sqls = "SELECT SUM(dr_amt_loc), SUM(cr_amt_loc) FROM tran_details WHERE batch_no='" . $_GET['recortid'] . "'";
                                $returnD = mysqli_query($conn, $sqls);
                                $result = mysqli_fetch_assoc($returnD);
                                $dr = $result['SUM(dr_amt_loc)'];
                                $cr = $result['SUM(cr_amt_loc)'];
                            }
                            ?>
                            <tr class="text-right">
                                <td colspan="2"></td>
                                <td colspan="1">Grand Total</td>
                                <td style="text-align:right"><strong> TK. <?php echo $dr; ?></strong>
                                </td>
                                <td style="text-align:right"><strong> TK. <?php echo $cr; ?></strong>
                                </td>
                            </tr>
                    </table>
                </div>
                <!-- ----------------code here---------------->
            </div>
    </div>
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
        //Initialize Select2 Elements
        $('.select2').select2()

    })
    $(document).ready(function() {
        $("#701000").addClass('active');
        $("#700000").addClass('active');
        $("#700000").addClass('is-expanded');
    });
</script>
</body>

</html>