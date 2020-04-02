<?php
require "../auth/auth.php";
require "../database.php";
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>
<div id="loader" style="margin-left: 15%;">
<img src="../images/preloader3.gif" width="100%" height="100%"/>
</div>

 <script type="text/javascript">

setTimeout(function() {
    $('#loader').fadeOut('fast');
}, 3000); // <-- time in milliseconds

</script> 
<!-- write your contant start -->
<main class="app-content">
  <div class="app-title">
    <div>
      <h1><i class="fa fa-dashboard"></i> Dashboard</h1>
      <p></p>
      <!-- logged in user information -->
      <p style="color:red">Welcome Accounting Managemet Software</p>
    </div>
    <ul class="app-breadcrumb breadcrumb">
      <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
      <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
    </ul>
  </div>
  <!-- total employee -->
  <?php
  $query = "Select count(emp_no) From sm_hr_emp";
  $returnD = mysqli_query($conn, $query);
  $result = mysqli_fetch_assoc($returnD);
  ?>
  <!-- total income  -->
  <?php
  $query = "SELECT gl_acc_code.acc_code, gl_acc_code.acc_head,gl_acc_code.category_code, gl_acc_code.acc_level, tran_details.gl_acc_code, sum(tran_details.cr_amt_loc) as cr_amt_loc, sum(tran_details.dr_amt_loc) as dr_amt_loc, tran_details.tran_date, SUM(tran_details.dr_amt_loc- tran_details.cr_amt_loc) as balance FROM gl_acc_code JOIN tran_details ON gl_acc_code.acc_code=tran_details.gl_acc_code AND tran_details.tran_date< now() AND gl_acc_code.category_code = '3' group by gl_acc_code.category_code";
  $returnD = mysqli_query($conn, $query);
  $income = mysqli_fetch_assoc($returnD);
  ?>
  <!-- totoal Expense  -->
  <?php
  $query = "SELECT gl_acc_code.acc_code, gl_acc_code.acc_head,gl_acc_code.category_code, gl_acc_code.acc_level, tran_details.gl_acc_code, sum(tran_details.cr_amt_loc) as cr_amt_loc, sum(tran_details.dr_amt_loc) as dr_amt_loc, tran_details.tran_date, SUM(tran_details.dr_amt_loc- tran_details.cr_amt_loc) as balance FROM gl_acc_code JOIN tran_details ON gl_acc_code.acc_code=tran_details.gl_acc_code AND tran_details.tran_date< now() AND gl_acc_code.category_code = '4' group by gl_acc_code.category_code";
  $returnD = mysqli_query($conn, $query);
  $expense = mysqli_fetch_assoc($returnD);
  ?>
  <div class="row">
    <div class="col-md-6 col-lg-3">
      <div class="widget-small primary coloured-icon"><i class="icon fa fa-users fa-3x"></i>
        <div class="info">

          <h4>Total Employee</h4>
          <p><b><?php echo $maxRows = $result['count(emp_no)']; ?></b></p>
        </div>
      </div>
    </div>
    <div class="col-md-6 col-lg-3">
      <div class="widget-small info coloured-icon"><i class="icon fa fa-child fa-3x"></i>
        <div class="info">
          <h4>Total Assets</h4>
          <p><b>25</b></p>
        </div>
      </div>
    </div>
    <div class="col-md-6 col-lg-3">
      <div class="widget-small danger coloured-icon"><i class="icon fa fa-child fa-3x"></i>
        <div class="info">
          <h4>Total Liability</h4>
          <p><b>10</b></p>
        </div>
      </div>
    </div>
    <div class="col-md-6 col-lg-3">
      <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
        <div class="info">
          <h4>Total Income</h4>
          <p><b><?php echo $income['balance']; ?></b></p>
        </div>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
        <div class="info">
          <h4>Total Expense</h4>
          <p><b><?php echo $expense['balance']; ?></b></p>
        </div>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
        <div class="info">
          <h4>Total Sale</h4>
          <p><b>500</b></p>
        </div>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
        <div class="info">
          <h4>Total Purchase</h4>
          <p><b>500</b></p>
        </div>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
        <div class="info">
          <h4>Total Stock</h4>
          <p><b>500</b></p>
        </div>
      </div>
    </div>

    <div class="col-md-6 col-lg-3">
      <div class="widget-small warning coloured-icon"><i class="icon fa fa-money fa-3x"></i>
        <div class="info">
          <h4>Balance Account List</h4>
          <p><b>500</b></p>
        </div>
      </div>
    </div>
    <!-- custom end -->
  </div>
  <div class="row">
    <div class="col-md-6">
      <div class="tile">
        <h3 class="tile-title">Monthly Sales</h3>
        <div class="embed-responsive embed-responsive-16by9">
          <canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="tile">
        <h3 class="tile-title">Total Income-Expense</h3>
        <div class="embed-responsive embed-responsive-16by9">
          <canvas class="embed-responsive-item" id="pieChartDemo"></canvas>
        </div>
      </div>
    </div>
  </div>
</main>
<!-- Write your contant end -->
<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- The java../script plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script type="text/javascript" src="../js/plugins/chart.js"></script>
<script type="text/javascript">
  var data = {
    labels: ["January", "February", "March", "April", "May"],
    datasets: [{
        label: "My First dataset",
        fillColor: "rgba(220,220,220,0.2)",
        strokeColor: "rgba(220,220,220,1)",
        pointColor: "rgba(220,220,220,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(220,220,220,1)",
        data: [65, 59, 80, 81, 56]
      },
      {
        label: "My Second dataset",
        fillColor: "rgba(151,187,205,0.2)",
        strokeColor: "rgba(151,187,205,1)",
        pointColor: "rgba(151,187,205,1)",
        pointStrokeColor: "#fff",
        pointHighlightFill: "#fff",
        pointHighlightStroke: "rgba(151,187,205,1)",
        data: [28, 48, 40, 19, 86]
      }
    ]
  };

  var pdata = [{
      value: <?php echo $income['balance']; ?>,
      color: "green",
      highlight: "#5AD3D1",
      label: "Income"
    },

    {
      value: <?php echo $expense['balance']; ?>,
      color: "red",
      highlight: "#FF5A5E",
      label: "Expense"
    }
  ]

  var ctxl = $("#lineChartDemo").get(0).getContext("2d");
  var lineChart = new Chart(ctxl).Line(data);

  var ctxp = $("#pieChartDemo").get(0).getContext("2d");
  var pieChart = new Chart(ctxp).Pie(pdata);
</script>
<!-- get out  -->
<script type="text/javascript">
  $(document).ready(function() {
    $("#dashboard").addClass('active');
  });
</script>
</body>

</html>