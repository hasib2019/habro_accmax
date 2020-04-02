<?php
require "../auth/auth.php";
if (isset($_GET["date"])) {
  $org_name = $_SESSION['org_name'];
  $org_logo = $_SESSION['org_logo'];
  $q = $_SESSION['org_rep_footer1'];
  $b = $_SESSION['org_rep_footer2'];
  $org = "<div><h2 style='text-align:center'><img src='../upload/$org_logo' style='width:35px;height:25px;'>$org_name</h2></div>";
  $date = $_GET["date"];
  $a = "<h4 style='text-align:center'>$date</h4>";
  require_once 'pdf.php';
  include('../database.php');
  $output = '';
  $output .= $org;
  $output .= '<h3 style="text-align:center">Journal Statement</h3>';
  $output .= $a;
  $output .= '
  <table width="100%" border="1" cellpadding="0" cellspacing="0">
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
  </tr>';
  $sql = "SELECT tran_details.batch_no,tran_details.tran_no,tran_details.gl_acc_code,tran_details.dr_amt_loc,tran_details.tran_date,tran_details.tran_mode,tran_details.description,tran_details.cr_amt_loc,gl_acc_code.acc_head,gl_acc_code.acc_code FROM tran_details JOIN gl_acc_code WHERE tran_details.gl_acc_code=gl_acc_code.acc_code  AND (tran_details.tran_date $date) ORDER BY tran_details.batch_no";
  $query = $conn->query($sql);
  while ($rows = $query->fetch_assoc()) {
    $output .= "<tr>
     <td style='width:100px'>" . $rows['tran_date'] . "</td>
     <td>" . $rows['tran_mode'] . "</td>
     <td>" . $rows['tran_no'] . "</td>
     <td>" . $rows['batch_no'] . "</td> 
     <td>" . $rows['gl_acc_code'] . "</td>
     <td>" . $rows['acc_head'] . "</td>
     <td>" . $rows['description'] . "</td>
     <td style='width:100px;text-align:right'>" . $rows['dr_amt_loc'] . "</td>
     <td style='width:100px;text-align:right'>" . $rows['cr_amt_loc'] . "</td>
  </tr>";
  }
  $output .= "<div style=
  'padding:80px'><div style='float:left;text-align:left;line-height:100%'><label>--------------------</label><br><strong>$q</strong></div><div style='float:right;text-align:right;line-height:100%'><label>--------------------------</label><br><strong>$b</strong></div></div>";
  $timestamp = time();
  $file_name = "jaurnal_pdf-$timestamp";
  $pdf = new Pdf();
  // $pdf->set_paper("A4", "portrait");
  $pdf->set_paper("Letter", "landscape");
  $pdf->loadHtml(utf8_decode($output));
  $pdf->render();
  $font = $pdf->getFontMetrics()->get_font("helvetica", "bold");
  $font_com = $pdf->getFontMetrics()->get_font("helvetica");
  date_default_timezone_set('Asia/Dhaka');
  $date = date("Y-m-d h:i:sa");
  $canvas = $pdf->get_canvas();
  $footer = $canvas->open_object();
  $w = $canvas->get_width();
  $h = $canvas->get_height();
  $canvas->page_text($w - 60, $h - 28, "Page {PAGE_NUM}/{PAGE_COUNT}", $font, 10);
  $canvas->page_text($w - 750, $h - 28, "Printed as on $date", $font, 10);
  $canvas->page_text($w - 400, $h - 18, "Habro System Limited Tel. +880 2 48810576", $font_com, 6);
  $canvas->close_object();
  $canvas->add_object($footer, "all");
  // $pdf->stream($file_name);
  $pdf->stream($file_name, array("Attachment" => false));
  unset($pdf);
}
?>
