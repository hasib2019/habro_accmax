<?php
require "../auth/auth.php";
require "../database.php";
if (isset($_POST["submit"])) {
    $office_code = $_SESSION['office_code'];
    $order_type = "S";
    $in_out_flag = "2";
    $year_code = $_SESSION['org_fin_year_st'];
    $batch_no = $_POST['batch_no'];
    $tran_date = $_POST['tran_date'];
    $tran_mode = "SV";
    $tran_mode_discount = "DIS";
    $discount_id = $_POST['discount_id'];
    $discount = "$_POST[discount]" . "%";
    $discount_amount = $_POST['discount_amount'];
    $tran_mode_vat = "VAT";
    $vat_id = $_POST['vat_id'];
    $vat = "$_POST[vat]" . "%";
    $vat_amount = $_POST['vat_amount'];
    $tran_mode_tax = "TAX";
    $tax_id = $_POST['tax_id'];
    $tax = "$_POST[tax]" . "%";
    $tax_amount = $_POST['tax_amount'];
    $vaucher_typedr = "DR";
    $vaucher_typecr = "CR";
    $by_account = $_POST['by_account'];
    $to_account = $_POST['to_account'];
    $particulardr = $_POST['particulardr'];
    $particularcr = $_POST['particularcr'];
    $draccount = $_POST['draccount'];
    $craccount = $_POST['craccount'];
    $order_status = "1";
    $ss_creator = $_SESSION['username'];
    $ss_org_no = $_SESSION['org_no'];

    $insertQuerydr = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`, `description`, `dr_amt_loc`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$to_account','$tran_mode','$vaucher_typedr','$particulardr','$craccount','$ss_creator',now(),'$ss_org_no')";
    $conn->query($insertQuerydr);
    if ($conn->affected_rows == 1) {
        $massage_cr = "cr Save Successfully!!";
    }
    $insertQuerycr = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`, `description`, `cr_amt_loc`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$by_account','$tran_mode','$vaucher_typecr','$particularcr','$draccount','$ss_creator',now(),'$ss_org_no')";
    $conn->query($insertQuerycr);
    if ($conn->affected_rows == 1) {
        $massage_dr = "cr Save Successfully!!";
    }
    $insertQuerydis = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`,`description`, `dr_amt_loc`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$discount_id','$tran_mode_discount','$vaucher_typedr','$discount','$discount_amount','$ss_creator',now(),'$ss_org_no')";
    if ($discount_amount != 0) {
        $conn->query($insertQuerydis);
    } else {
        echo  $conn->error;
    }
    $insertQueryvat = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`,`description`, `cr_amt_loc`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$vat_id','$tran_mode_vat','$vaucher_typecr','$vat','$vat_amount','$ss_creator',now(),'$ss_org_no')";
    if ($vat_amount != 0) {
        $conn->query($insertQueryvat);
    } else {
        echo  $conn->error;
    }
    $insertQuerytax = "INSERT INTO `tran_details` (`tran_no`,`office_code`,`year_code`,`batch_no`, `tran_date`, `gl_acc_code`,`tran_mode`,`vaucher_type`,`description`, `cr_amt_loc`,`ss_creator`,`ss_creator_on`,`ss_org_no`) VALUES (NULL,'$office_code','$year_code','$batch_no','$tran_date','$tax_id','$tran_mode_tax','$vaucher_typecr','$tax','$tax_amount','$ss_creator',now(),'$ss_org_no')";
    if ($tax_amount != 0) {
        $conn->query($insertQuerytax);
    } else {
        echo  $conn->error;
    }
    for ($count = 0; $count < count($_POST["item_no"]); $count++) {
        $data = array(
            ':office_code'  => $office_code,
            ':order_type'  => $order_type,
            ':in_out_flag'  => $in_out_flag,
            ':batch_no'  => $batch_no,
            ':tran_date'  => $tran_date,
            ':item_no'   => $_POST["item_no"][$count],
            ':item_qty' => $_POST["item_qty"][$count],
            ':item_unit' => $_POST["item_unit"][$count],
            ':unit_price_loc'  => $_POST["unit_price_loc"][$count],
            ':total_price_loc' => $_POST["total_price"][$count],
            ':order_status' => $order_status,
            ':status_date' => $tran_date,
            ':ss_creator'  => $ss_creator,
            ':ss_org_no'  => $ss_org_no
        );
        $query = "INSERT INTO invoice_detail (office_code,order_type,in_out_flag, order_no, order_date, item_no, item_qty, item_unit, unit_price_loc,total_price_loc,order_status,status_date, ss_creator,ss_created_on,ss_org_no) VALUES (:office_code,:order_type,:in_out_flag,:batch_no,:tran_date,:item_no,:item_qty,:item_unit, :unit_price_loc,:total_price_loc,:order_status,:status_date,:ss_creator,now(),:ss_org_no)";
        $statement = $connect->prepare($query);
        if ($statement->execute($data)) {
            $massage = "Sales Successfully!!";
        }
        header('refresh:1;../sales/sales_voucher.php');
    }
}
?>
<?php
require "../source/top.php";
$pid= 1101000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require "../source/header.php";
require "../source/sidebar.php";
?>
<?php
$querys = "Select Max(batch_no) From tran_details";
$returns = mysqli_query($conn, $querys);
$results = mysqli_fetch_assoc($returns);
$maxRows = $results['Max(batch_no)'];
if (empty($maxRows)) {
    $lastRows = $maxRows = 2019000000;
} else {
    $lastRows = $maxRows + 1;
}
?>
<main class="app-content">
    <form action="" method="post">

        <table class="table bg-light table-bordered table-sm">
            <thead>
                <tr>
                    <th>Sales Voucher No</th>
                    <th style="text-align: center">Transaction Date</th>
                    <th style="text-align: center">Time</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> <input type="text" name="batch_no" readonly class="org_form org_12" autofocus value="<?php if (!empty($lastRows)) {
                                                                                                                    echo $lastRows;
                                                                                                                } ?>"></td>
                    <td> <input type="date" id="date" class="org_form" name="tran_date" value="<?php echo $_SESSION['org_eod_bod_proceorg_date']; ?>"></td>
                    <td> <input type="text" id="date" class="org_form" id="clock" value="<?php date_default_timezone_set('Asia/Dhaka');
                                                                                            echo date("h:i:sa"); ?>" readonly></td>
                </tr>
            </tbody>
        </table>
        <table class="table bg-light table-bordered table-sm" id="multi_table">
            <thead>
                <tr style="background-color: lightgray">
                    <th>No</th>
                    <th>Item Name</th>
                    <th>Unit</th>
                    <th>Quantity</th>
                    <th>Unit Price</th>
                    <th>Amount</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td><select name="item_no[]" class="form-control item_no" required>
                            <option value="">-Select Item-</option>
                            <?php
                            $selectQuery = 'SELECT * FROM `item`';
                            $selectQueryResult = $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $row['id'] . '">' . $row['item_name'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td><select name="item_unit[]" class="item_unit form-control" required>
                            <option value="">-Select Item-</option>
                            <?php
                            $selectQuery = 'SELECT * FROM `code_master` where hardcode="UCODE" and softcode>0';
                            $selectQueryResult = $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $row['description'] . '">' . $row['description'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td><input type="text" name="item_qty[]" id="item_qty1" data-srno="1" class="item_qty form-control" /></td>
                    <td><input type="text" name="unit_price_loc[]" id="unit_price_loc1" data-srno="1" class="unit_price_loc form-control" /></td>
                    <td><input type="text" name="total_price[]" id="total_price1" data-srno="1" readonly class="total_price form-control" /></td>
                    <td><button type="button" name="add_row" id="add_row" class="btn btn-success btn-xl">+</button></td>
                </tr>
            </tbody>
            <tr>
                <th colspan="5" style="text-align: right">Sub Total</th>
                <th><input type="text" class="sub_total form-control" id="sub_total" style="width:100%" readonly></th>
                <th></th>
            </tr>
        </table>

        <table class="table bg-light table-bordered table-sm">
            <tfoot>
                <tr>
                    <td></td>
                    <td><select class="form-control" name="by_account" style="width:250px" required>
                            <option value="">---Select By Accouny---</option>
                            <?php
                            $selectQuery = "SELECT * FROM `gl_acc_code` where postable_acc= 'Y' ORDER by acc_code";
                            $selectQueryResult =  $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($drrow = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $drrow['acc_code'] . '">'  . $drrow['acc_head'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td colspan="2"><input type="text" class="form-control" name="particulardr" placeholder="Particular"></td>
                    <td><input type="text" class="dr_amount form-control" id="dr_amount" name="draccount" placeholder="Dr.Amount" readonly></td>
                    <td style="width: 20px"> <strong>Dr</strong></td>
                </tr>
                <tr>
                    <td></td>
                    <td><select name="discount_id" class="form-control">
                            <option value="">-Select Discount Account-</option>
                            <?php
                            $selectQuery = 'SELECT gl_acc_code.acc_code,gl_acc_code.acc_head,gl_acc_code.postable_acc, tax_vat_rate_master.under_account,tax_vat_rate_details.from_amount, tax_vat_rate_details.to_amount, tax_vat_rate_details.tax_on_rate, tax_vat_rate_details.tax_type  FROM `gl_acc_code`, `tax_vat_rate_master`, tax_vat_rate_details WHERE gl_acc_code.acc_code=tax_vat_rate_master.under_account and tax_vat_rate_master.tax_type=tax_vat_rate_details.tax_type GROUP by gl_acc_code.acc_code';
                            $selectQueryResult = $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $row['acc_code'] . '">' . $row['acc_head'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td style="width: 5px"><strong>@</strong></td>
                    <td><input type="text" name="discount" class="discount form-control" id="discount" value=""></td>
                    <td><input type="text" name="discount_amount" value="0" class="discount_amount form-control" id="discount_amount" readonly></td>
                    <input type="hidden" name="discount_before_amount" class="discount_before_amount form-control" id="discount_before_amount" readonly>
                    <input type="hidden" name="discount_after_amount" class="discount_after_amount form-control" id="discount_after_amount" readonly>
                    <td style="width: 20px"> <strong>Cr</strong></td>

                </tr>
                <!-- vat -->
                <tr>
                    <td></td>
                    <td style="width: 250px"><select name="vat_id" class="form-control">
                            <option value="">-Select VAT Account-</option>
                            <?php
                            $selectQuery = 'SELECT gl_acc_code.acc_code,gl_acc_code.acc_head,gl_acc_code.postable_acc, tax_vat_rate_master.under_account,tax_vat_rate_details.from_amount, tax_vat_rate_details.to_amount, tax_vat_rate_details.tax_on_rate, tax_vat_rate_details.tax_type  FROM `gl_acc_code`, `tax_vat_rate_master`, tax_vat_rate_details WHERE gl_acc_code.acc_code=tax_vat_rate_master.under_account and tax_vat_rate_master.tax_type=tax_vat_rate_details.tax_type GROUP by gl_acc_code.acc_code';
                            $selectQueryResult = $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $row['acc_code'] . '">' . $row['acc_head'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td style="width: 5px"><strong>@</strong></td>
                    <td style="width: 250px"><input type="text" name="vat" class="vat form-control" id="vat"></td>
                    <td style="width: 250px"><input type="text" name="vat_amount" value="0" class="vat_amount form-control" id="vat_amount" readonly></td>
                    <input type="hidden" name="vat_before_amount" class="vat_before_amount form-control" id="vat_before_amount" readonly>
                    <input type="hidden" name="vat_after_amount" class="vat_after_amount form-control" id="vat_after_amount" readonly>
                    <td style="width: 20px"> <strong>Dr</strong></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="width: 250px"><select name="tax_id" class="form-control">
                            <option value="">-Select Tax Account-</option>
                            <?php
                            $selectQuery = 'SELECT  gl_acc_code.acc_code,gl_acc_code.acc_head,gl_acc_code.postable_acc, tax_vat_rate_master.under_account,tax_vat_rate_details.from_amount, tax_vat_rate_details.to_amount, tax_vat_rate_details.tax_on_rate, tax_vat_rate_details.tax_type  FROM `gl_acc_code`, `tax_vat_rate_master`, tax_vat_rate_details WHERE gl_acc_code.acc_code=tax_vat_rate_master.under_account and tax_vat_rate_master.tax_type=tax_vat_rate_details.tax_type GROUP by gl_acc_code.acc_code';
                            $selectQueryResult = $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($row = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $row['acc_code'] . '">' . $row['acc_head'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td style="width: 5px"><strong>@</strong></td>
                    <td style="width: 250px"><input type="text" name="tax" class="tax form-control" id="tax"></td>
                    <td style="width: 250px"><input type="text" name="tax_amount" value="0" class="tax_amount form-control" id="tax_amount" readonly></td>
                    <input type="hidden" name="tax_before_amount" class="tax_before_amount form-control" id="tax_before_amount" readonly>
                    <input type="hidden" name="tax_after_amount" class="tax_after_amount form-control" id="tax_after_amount" placeholder="Net Amount" readonly>
                    <td style="width: 20px"> <strong>Dr</strong></td>
                </tr>
                <tr>
                    <th colspan="4" style="text-align:right">Net Total</th>
                    <td style="width: 250px"><input type="text" id="grand_total" class="grand_total form-control" style="width:100%" readonly></td>
                </tr>
                <tr>
                    <td></td>
                    <td><select class="form-control grand" name="to_account" required>
                            <option value="">---Select To Account ---</option>
                            <?php
                            $selectQuery = "SELECT * FROM `gl_acc_code` where postable_acc= 'Y' AND acc_type=1 OR acc_type=7 ORDER by acc_code";
                            $selectQueryResult =  $conn->query($selectQuery);
                            if ($selectQueryResult->num_rows) {
                                while ($drrow = $selectQueryResult->fetch_assoc()) {
                                    echo '<option value="' . $drrow['acc_code'] . '">'  . $drrow['acc_head'] . '</option>';
                                }
                            }
                            ?>
                        </select></td>
                    <td colspan="2"> <input type="text" class="form-control" name="particularcr" placeholder="Particular"></td>
                    <td style="width: 250px"> <input type="text" id="cr_amount" class="cr_amount form-control" name="craccount" placeholder="Cr. Amount" readonly></td>
                    <td style="width: 20px"> <strong>Cr</strong></td>
                </tr>
            </tfoot>
        </table>
        <div class="col-12">
            <div align="right">
                <input name="submit" type="submit" id="sub" value="Submit" class="btn btn-info" style="width:250px" />
            </div>
        </div>
    </form>
    <!-- ! alert -->
    <?php
    if (!empty($message)) {
        echo '<script type="text/javascript">
            Swal.fire(
                "Sales Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
    }
    if (!empty($massage_dr)) {
        echo '<script type="text/javascript">
            Swal.fire(
                "Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
    }
    if (!empty($massage_cr)) {
        echo '<script type="text/javascript">
            Swal.fire(
                "Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
    }
    ?>
    <!-- alert -->
    </div>
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>
    <script src="../js/plugins/pace.min.js"></script>
    <script src="../js/select2.full.min.js"></script>
    <script>
        $(document).ready(function() {
            var count = 1;
            $(document).on('click', '#add_row', function() {
                count++;
                var html_code = '';
                html_code += '<tr id="row_id_' + count + '">';
                html_code += '<td><span id="sr_no">' + count + '</span></td>';
                html_code += `<td><select name="item_no[]" class="form-control item_no" required>
        <option value="">-Select Item-</option>
        <?php
        require '../database.php';
        $selectQuery = 'SELECT * FROM `item`';
        $selectQueryResult = $conn->query($selectQuery);
        if ($selectQueryResult->num_rows) {
            while ($row = $selectQueryResult->fetch_assoc()) {
                echo '<option value="' . $row['id'] . '">' . $row['item_name'] . '</option>';
            }
        }
        ?>
    </select></td>`;
                html_code += `<td><select name="item_unit[]" id="item_unit' + count + '" data-srno="' + count + '" class="item_unit form-control" >
                            <option value="">-Select Item-</option>
                        <?php
                        $selectQuery = 'SELECT * FROM `code_master` where hardcode="UCODE" and softcode>0';
                        $selectQueryResult = $conn->query($selectQuery);
                        if ($selectQueryResult->num_rows) {
                            while ($row = $selectQueryResult->fetch_assoc()) {
                                echo '<option value="' . $row['description'] . '">' . $row['description'] . '</option>';
                            }
                        }
                        ?>
                            </select></td>`;
                html_code += '<td><input type="text" name="item_qty[]" id="item_qty' + count + '" data-srno="' + count + '" class="form-control item_qty"/></td>';
                html_code += '<td><input type="text" name="unit_price_loc[]" id="unit_price_loc' + count + '" data-srno="' + count + '" class="form-control unit_price_loc"/></td>';
                html_code += '<td><input type="text" name="total_price[]" id="total_price' + count + '" data-srno="' + count + '" readonly class="form-control total_price"/></td>';
                html_code += '<td><button type="button" name="remove_row" id="' + count + '" class="form-control btn btn-danger btn-xs remove_row">-</button></td>';
                html_code += '</tr>';
                $('#multi_table').append(html_code);
            });
            $(document).on('click', '.remove_row', function() {
                var row_id = $(this).attr("id");
                var total_item_amount = $('#total_price' + row_id).val();
                var final_amount = $('#total').text();
                var result_amount = parseFloat(final_amount) - parseFloat(total_item_amount);
                $('#total').text(result_amount);
                $('#row_id_' + row_id).remove();
                count--;
            });

            function total(count) {
                var sub_total = 0;
                for (j = 1; j <= count; j++) {
                    var item_qty = 0;
                    var unit_price_loc = 0;
                    // var item_total = 0;
                    item_qty = $('#item_qty' + j).val();
                    if (item_qty > 0) {
                        unit_price_loc = $('#unit_price_loc' + j).val();
                        if (unit_price_loc > 0) {
                            item_total = parseFloat(item_qty) * parseFloat(unit_price_loc);
                            sub_total = parseFloat(sub_total) + parseFloat(item_total);
                            $('#total_price' + j).val(item_total.toFixed(2));
                        }
                    }
                }
                $('#sub_total').val(sub_total);
                $('#dr_amount').val(sub_total);
                discount11 = $('#discount_after_amount').val();
                if (discount11 > 0) {
                    $('#grand_total').val(discount11);
                    $('#cr_amount').val(discount11);
                } else {
                    $('#grand_total').val(sub_total);
                    $('#cr_amount').val(sub_total);
                }
            }
            $(document).on('keyup', '.unit_price_loc', function() {
                total(count);
            });

            function discount(count) {
                var discount = 0;
                discount = $('#discount').val();
                if (discount > 0) {
                    discount_before_amount = $('#sub_total').val();
                    discount_amount = (parseFloat(discount_before_amount) / 100) * parseFloat(discount);
                    $('#discount_amount').val(discount_amount);
                    $('#discount_before_amount').val(discount_before_amount);
                    discount_after_amount = discount_before_amount - discount_amount;
                    $('#discount_after_amount').val(discount_after_amount);
                    if (discount > 0) {
                        $('#grand_total').val(discount_after_amount);
                        $('#cr_amount').val(discount_after_amount);
                    } else {
                        $('#grand_total').val(sub_total);
                        $('#cr_amount').val(sub_total);
                    }
                } else {}
            }
            $(document).on('keyup', '.discount', function() {
                discount(count);
            });

            function vat(count) {
                var vat = 0;
                vat = $('#vat').val();
                discount_vat = $('#discount').val();
                if (vat > 0) {
                    if (discount_vat > 0) {
                        vat_before_amount = $('#discount_after_amount').val();
                    } else {
                        vat_before_amount = $('#sub_total').val();
                    }
                    vat_amount = (parseInt(vat_before_amount) / 100) * parseInt(vat);
                    $('#vat_amount').val(vat_amount);
                    $('#vat_before_amount').val(vat_before_amount);
                    vat_after_amount = (vat_before_amount - (-vat_amount));
                    $('#vat_after_amount').val(vat_after_amount);
                    if (vat_after_amount > 0) {
                        $('#grand_total').val(vat_after_amount);
                        $('#cr_amount').val(vat_after_amount);
                    } else {
                        vat_before_amount = $('#sub_total').val();
                        $('#grand_total').val(vat_before_amount);
                        $('#cr_amount').val(vat_before_amount);
                    }
                } else {}
            }
            $(document).on('keyup', '.vat', function() {
                vat(count);
            });

            function tax(count) {
                var tax = 0;
                var vat_after_amount = 0;
                tax = $('#tax').val();
                discount_tax = $('#discount').val();
                if (tax > 0) {
                    if (discount_tax > 0) {
                        tax_before_amount = $('#discount_after_amount').val();
                    } else {
                        tax_before_amount = $('#sub_total').val();
                    }
                    tax_amount = (parseFloat(tax_before_amount) / 100) * parseFloat(tax);
                    $('#tax_amount').val(tax_amount);
                    // tax_before_amount = $('#discount_after_amount').val();
                    $('#tax_before_amount').val(tax_before_amount);
                    if (vat_after_amount == 0) {
                        ttt = $('#sub_total').val();
                        discountamount = $('#discount_amount').val();
                        discounvat = $('#vat_amount').val();
                        total = (ttt - discountamount - (-discounvat) - (-tax_amount));
                        $('#tax_after_amount').val(total);
                    } else {
                        tax_after_amount = (vat_after_amount - (-tax_amount));
                        $('#tax_after_amount').val(tax_after_amount);
                    }

                    if (tax_after_amount > 0) {
                        $('#grand_total').val(tax_after_amount);
                        $('#cr_amount').val(tax_after_amount);
                    } else {
                        ttt = $('#sub_total').val();
                        discountamount = $('#discount_amount').val();
                        discounvat = $('#vat_amount').val();
                        total = (ttt - discountamount - (-discounvat) - (-tax_amount));
                        $('#grand_total').val(total);
                        $('#cr_amount').val(total);
                    }
                } else {

                }
            }
            $(document).on('keyup', '.tax', function() {
                tax(count);
            });
        });

        $(document).ready(function() {
            $("#1101000").addClass('active');
            $("#1100000").addClass('active');
            $("#1100000").addClass('is-expanded');
        });
    </script>
    </body>

    </html>