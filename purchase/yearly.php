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
            <h1><i class="fa fa-dashboard"></i> Monthly Purchase Report </h1>
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
        <h4 style="text-align:center">বোর্ডিং বাজার রিপোর্ট </h4>
    </div>
    <!-- report header end -->
    <!-- search option -->
    <table>
        <form method="POST">
            <tr>
                <td>
                    As on date:
                    <select type="date" name="startdate" id="" class="form-control" required>
                        <option value="">January</option>
                        <option value="">February</option>
                        <option value="">March</option>
                        <option value="">April</option>
                        <option value="">May</option>
                        <option value="">June</option>
                        <option value="">July</option>
                        <option value="">August</option>
                        <option value="">October</option>
                        <option value="">November</option>
                        <option value="">December</option>
                    </select>
                </td>
                <td>
                    From:
                    <select type="date" name="enddate" id="" class="form-control" required>
                        <option value="">January</option>
                        <option value="">February</option>
                        <option value="">March</option>
                        <option value="">April</option>
                        <option value="">May</option>
                        <option value="">June</option>
                        <option value="">July</option>
                        <option value="">August</option>
                        <option value="">October</option>
                        <option value="">November</option>
                        <option value="">December</option>
                    </select>
                </td>
                <td>submit:<input type="submit" name="submit" value="Submit" class="form-control" id="dateSubmit"></td>
        </form>
    </table>
    <!-- !search option -->
    <!-- table -->
    <div class="table-responsive-lg">
        <table border="1" style="width: 100%;margin-top:10px">
            <thead>
                <tr style="text-align: center;border-bottom: 2px solid black">
                    <!-- <div style="border-style: solid "> -->
                    <th colspan="2" style="border-right: 2px solid black">পণ্যের বিবরণী </th>
                    <th colspan="3" style="border-right: 2px solid black">মাসের নাম </th>
                    <th colspan="3" style="border-right: 2px solid black">মাসের নাম </th>
                    <th colspan="2">মোট</th>
                </tr>
                <tr style="text-align: center">
                    <th style="width:2%">ক্রমঃ নং</th>
                    <th style="border-right: 2px solid black">পণ্যের নাম </th>
                    <!-- </div> -->
                    <th>দর (টাকা)</th>
                    <th>পরিমাণ </th>
                    <th style="border-right: 2px solid black">মূল্য</th>
                    <th>দর (টাকা)</th>
                    <th>পরিমাণ </th>
                    <th style="border-right: 2px solid black">মূল্য</th>
                    <th>পরিমাণ </th>
                    <th>মূল্য</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                $sql = "SELECT invoice_detail.item_no, invoice_detail.item_unit, invoice_detail.unit_price_loc, invoice_detail.item_qty, invoice_detail.total_price_loc, item.item_name as item_name, item.id FROM invoice_detail JOIN item WHERE invoice_detail.item_no= item.id";
                $query = $conn->query($sql);
                while ($rows = $query->fetch_assoc()) {

                ?>
                    <tr>
                        <td><?php echo $no++; ?></td>
                        <td style="border-right: 2px solid black;text-align: center"><?php echo $rows['item_name']; ?></td>
                        <td style="text-align: right"><?php echo $rows['unit_price_loc']; ?></td>
                        <td style="text-align: center"><?php echo $rows['item_qty']; ?> <?php echo $rows['item_unit']; ?></td>
                        <td style="text-align: right;border-right: 2px solid black"><?php echo $rows['total_price_loc']; ?></td>
                        <td style="text-align: right"><?php echo $rows['unit_price_loc']; ?></td>
                        <td style="text-align: center"><?php echo $rows['item_qty']; ?> <?php echo $rows['item_unit']; ?></td>
                        <td style="text-align: right;border-right: 2px solid black"><?php echo $rows['total_price_loc']; ?></td>
                        <td style="text-align: center"><?php echo $rows['item_qty']; ?> <?php echo $rows['item_unit']; ?></td>
                        <td style="text-align: right"><?php echo $rows['total_price_loc']; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
            <tfoot>
                <tr style="text-align: center;border-top: 2px solid black">
                    <th colspan="3" style="text-align: right">পরিমাণ</th>
                    <th>1000 kg </th>
                    <th style="text-align: right">200000/=</th>
                    <th>পরিমাণ</th>
                    <th>200 kg </th>
                    <th style="text-align: right">100000/=</th>
                    <th>পরিমাণ </th>
                    <th style="text-align: right">200000/=</th>
                </tr>
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
        $("#1005000").addClass('active');
        $("#1000000").addClass('active');
        $("#1000000").addClass('is-expanded')
    });
</script>
</body>

</html>