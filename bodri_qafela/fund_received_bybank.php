<?php
require "../auth/auth.php";
require "../database.php";
	if(isset($_POST['SubBtn'])){
        $error = false;	
        
    $membership_no = $_POST['membership_no'];	
    $payment_mode = $_POST['payment_mode'];
    $payment_amount = $_POST['payment_amount'];		
    $payment_date = $_POST['payment_date'];	    					
    $cheque_no = $_POST['cheque_no'];				
    $cheque_date = $_POST['cheque_date'];				
    $bank_name = $_POST['bank_name'];				
    $branch_name = $_POST['branch_name'];				
    
    $insertQuery = "INSERT INTO `fund_recived` VALUES (NULL,'$membership_no','$payment_mode','$payment_amount','$payment_date','$cheque_no','$cheque_date','$bank_name','$branch_name','','','','','','','',now(),'',now())";
		$conn->query($insertQuery);
    $updateQuery = "UPDATE `fund_member` SET paid_amount=paid_amount+'$payment_amount', paid_date='$payment_date', due=annul_c_tk-paid_amount where member_id='$membership_no'";
    $conn->query($updateQuery);
    if ($conn->affected_rows == 1) {
      $message = "Save Successfully!";
    } else {
      $mess = "Failled!";
    }
    header('refresh:2;../bodri_qafela/fund_received_bybank.php');		
	}
?>
<?php
require "../source/top.php";
require "../source/header.php";
require "../source/sidebar.php";
?>    
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-dashboard"></i> Fund Received By Bank</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        </ul>
      </div>
      <a href="../bodri_qafela/fund_received_bycash.php" class="btn btn-success">By Cash</a>
  <a href="../bodri_qafela/fund_received_bybank.php"><button type="button" class="btn btn-dark" disabled>By Bank</button></a>
  <a href="../bodri_qafela/fund_received_wallat.php" class="btn btn-success">By Wallt</a>

  <br><br>
      <div class="row">
        <div class="col-md-12">
          <!-- -------------------------------->
           <form action="" method="post">
           <!-- Member and payment date -->
         <div class="form-row form-group">
         <label class="col-sm-2 col-form-label">Received Type</label>
             <label for="" class="col-form-label">:</label>
           <div class="col">
             <select name="payment_mode" class="form-control" required>
          <!--------------------------------------------------------->
          <!-- <?php
          $selectQuery = 'SELECT hardcode,softcode,description FROM `code_master` WHERE `hardcode`= "DTYPE" AND `softcode`>0';
          $selectQueryResult =  $conn->query($selectQuery);		 
          if($selectQueryResult->num_rows){
              while($row = $selectQueryResult->fetch_assoc()){
                echo '<option value="'.$row['softcode'].'">'.$row['softcode'].".".$row['description'].'</option>';           
                    }
                  }
                ?>
       -->
       <option value="By Bank">By Bank</option>
            </select>
           </div>

             <label class="col-sm-2 col-form-label">Membership No</label>
             <label for="" class="col-form-label">:</label>
           <div class="col">
             <select name="membership_no" class="form-control" required>
          <!--------------------------------------------------------->
          <?php
             
              $selectQuery = 'SELECT member_id,full_name FROM `fund_member`';
              $selectQueryResult =  $conn->query($selectQuery);
              if ($selectQueryResult->num_rows) {
                while ($row = $selectQueryResult->fetch_assoc()) {
                  echo '<option value="' . $row['member_id'] . '">' . $row['member_id'] . '. ' . $row['full_name'] . '</option>';
                }
              }
              ?>
        <!--------------------------------------------------------->
            </select>
           </div>
           
         </div>   
         <!-- Payment type and Transaction id -->
         <div class="form-row form-group">
         <label class="col-sm-2 col-form-label">Payment Amount</label>
             <label for="" class="col-form-label">:</label>
           <div class="col">
             <input type="text" name="payment_amount" class="form-control">
           </div>
           <label for="staticEmail" class="col-sm-2 col-form-label">Payment Date</label>
           <label for="" class="col-form-label">:</label>
           <div class="col">
             <!-- <input type="Date" name="payment_date" class="form-control"> -->
             <input type="date" name="payment_date" id="date" class="form-control">
             <script>
              const dateInput = document.querySelector('#date');
              var date = new Date();
              var month = date.getMonth()+1;
              if(month<10){
                month=`0${month}`;                
              }
              var dateValue = `${date.getFullYear()}-${month}-${date.getDate()}`;
              dateInput.value = `${dateValue}`;
           </script>           
           </div>           
         </div>
         <!-- Bank Info -->
         <div class="form-row form-group">
             <label class="col-sm-2 col-form-label">cheque_no</label>
             <label for="" class="col-form-label">:</label>
           <div class="col">
             <input type="text" name="cheque_no" class="form-control">
           </div>
           <label for="staticEmail" class="col-sm-2 col-form-label">Cheque Date</label>
           <label for="" class="col-form-label">:</label>
           <div class="col">
             <input type="date" name="cheque_date" class="form-control">
           </div>
         </div>   

         <!-- bank info -->
         <div class="form-row form-group">
             <label class="col-sm-2 col-form-label">Bank Name</label>
             <label for="" class="col-form-label">:</label>
           <div class="col">
             <input type="text" name="bank_name" class="form-control" >
           </div>
           <label for="staticEmail" class="col-sm-2 col-form-label">Branch Name</label>
           <label for="" class="col-form-label">:</label>
           <div class="col">
             <input type="text" name="branch_name" class="form-control">
           </div>
         </div>   

          
       <!-- ------------------------------------------------ -->
        <input type="submit" value="Submit" class=" btn btn-primary form-control text-center" name="SubBtn">
         </form>
          <!-- -------------------------------->
          <?php
      if (!empty($message)) {
        echo '<script type="text/javascript">
            Swal.fire(
                "Save Successfully!!",
                "Welcome ' . $_SESSION['username'] . '",
                "success"
              )
            </script>';
      } else {
      }
      if (!empty($mess)) {
        echo '<script type="text/javascript">
          Swal.fire({
              icon: "error",
              title: "Oops...",
              text: "Sorry ' . $_SESSION['username'] . '",
            });
          </script>';
      } else {
      }
      ?>
        </div>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>
    <!-- The java.. plugin to display page loading on top-->
    <script src="../js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- --------------------------------------- -->
    <script type="text/javascript">
    $(document).ready(function() {  
      $("#900000").addClass('is-expanded');  
      $("#903000").addClass('active');
      $("#900000").addClass('active');
    });
    </script>
    
  </body>
</html>