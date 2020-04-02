<?php
require "../auth/auth.php";
require "../database.php";
require "../source/top.php";
$pid= 1002000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Purchase Details Report </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <div class="pull-right">
                <a id='print' title="Print" class="btn btn-danger" href="javascript:window.print()"><i class="fa fa-print"></i>Print</a>
                <a id='print' title="Print" class="btn btn-danger" target="_blank" href="voucher_view_pdf.php?recortid=<?php echo $_GET['recortid']; ?>"></i>PDF</a>
                <a id='print' title="Print" class="btn btn-danger" href="voucher_view_pdf.php?recortid=<?php echo $_GET['recortid']; ?>"></i>Excel</a>
                <a id='print' title="Print" class="btn btn-danger" href="voucher_view_word.php?recortid=<?php echo $_GET['recortid']; ?>"></i>docx</a>
                <a id='print' title="Print" class="btn btn-danger" href="voucher_view_pdf.php?recortid=<?php echo $_GET['recortid']; ?>"></i>csv</a>
            </div>
        </ul>
    </div>
    <!-- report header start -->
    <?php
    $org_logo = $_SESSION['org_logo'];
    $org_name = $_SESSION['org_name'];;
    ?>
    <div>
        <h2 style="text-align:center"><img src="../upload/<?php echo $org_logo; ?>" alt="logo" style="width:40px;height:40px;"> <?php echo $org_name; ?></h2>
    </div>
    <div>
        <h4 style="text-align:center">বোর্ডিং বিস্তারিত বাজার রিপোর্ট </h4>
    </div>
    <!-- report header end -->
    <!-- search option -->
    <div class="table-responsive-lg">
        <table border="1" style="width: 100%;margin-top:10px">
            <thead>
                <tr style="text-align: center">
                    <th style="width:2%">ক্রমঃ নং</th>
                    <th>অর্ডার তারিখ</th>
                    <th>অর্ডার নং</th>
                    <th>হিসাবের নাম </th>
                    <th>পণ্যের নাম </th>
                    <th>পরিমাণ </th>
                    <th>একক দর</th>
                    <th>মূল্য</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                $sql = "SELECT tran_details.tran_no,tran_details.vaucher_type, tran_details.batch_no, tran_details.tran_date, tran_details.gl_acc_code, tran_details.dr_amt_loc, invoice_detail.order_no, invoice_detail.order_date, invoice_detail.item_no, invoice_detail.item_qty, invoice_detail.item_unit, invoice_detail.unit_price_loc, invoice_detail.total_price_loc, gl_acc_code.acc_code, gl_acc_code.acc_head, item.item_name,item.id FROM tran_details, invoice_detail JOIN gl_acc_code JOIN item WHERE tran_details.batch_no = invoice_detail.order_no AND gl_acc_code.acc_code = tran_details.gl_acc_code AND tran_details.vaucher_type = 'CR' AND item.id= invoice_detail.item_no ORDER BY invoice_detail.order_date";

                $query = $conn->query($sql);
                while ($rows = $query->fetch_assoc()) {
                ?>
                    <tr>
                        <td><?php echo $no++; ?></td>
                        <td style="text-align: center"><?php echo $rows['order_date']; ?> </td>

                        <td style="text-align: right"><?php echo $rows['order_no']; ?></td>
                        <td style="text-align: center"><?php echo $rows['acc_head']; ?></td>
                        <td style="text-align: left"><?php echo $rows['item_name']; ?></td>
                        <td style="text-align: center"><?php echo $rows['item_qty']; ?> <?php echo $rows['item_unit']; ?></td>
                        <td style="text-align: right"><?php echo $rows['unit_price_loc']; ?></td>
                        <td style="text-align: right;text-indent:5px"><?php echo $rows['total_price_loc']; ?></td>
                    </tr>
                <?php } ?>
            <tfoot>
                <?php
                // $sql2 = "SELECT tran_details.tran_no,tran_details.vaucher_type, tran_details.batch_no, tran_details.gl_acc_code, invoice_detail.order_no, invoice_detail.order_date, invoice_detail.item_no, SUM(invoice_detail.total_price_loc) AS total_price_loc, gl_acc_code.acc_code, gl_acc_code.acc_head, item.item_name,item.id FROM tran_details, invoice_detail JOIN gl_acc_code JOIN item WHERE tran_details.batch_no = invoice_detail.order_no AND gl_acc_code.acc_code = tran_details.gl_acc_code AND tran_details.vaucher_type = 'CR' AND item.id= invoice_detail.item_no ORDER BY invoice_detail.order_date";
                $sql2 = "SELECT sum(total_price_loc) AS total_price_loc FROM `invoice_detail`";
                $query2 = $conn->query($sql2);
                $result = $query2->fetch_assoc();
                ?>
                <tr>
                    <th style="text-align:right" colspan="7">Total</th>
                    <th style="text-align:right"><?php echo $result['total_price_loc']; ?></th>
                </tr>
            </tfoot>
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    </div>
    <!-- table -->
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
        $("#1002000").addClass('active');
        $("#1000000").addClass('active');
        $("#1000000").addClass('is-expanded');
    });
</script>
</body>
</html>