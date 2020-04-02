<?php
require "../auth/auth.php";
require "../database.php";
require "../source/top.php";
$pid= 803000; $role_no = $_SESSION['sa_role_no'];
auth_page($conn,$pid,$role_no);
require "../source/header.php";
require "../source/sidebar.php";
?>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i> Bank Cheque leaf Information </h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-hover">
                    <tr class="active">
                        <th>No</th>
                        <th>Office Code</th>
                        <th>Bankk Account No</th>
                        <th>Bank Code </th>
                        <th>Branch Code</th>
                        <th>Cheque No</th>
                        <th>Cheque Leaf No</th>
                        <th>Date </th>
                        <th>Creator</th>
                    </tr>
                    <?php
                    $no = 1;
                    $sql = "SELECT * FROM `bank_chq_leaf_info` ORDER BY `chq_leaf_no` ASC";
                    $query = $conn->query($sql);
                    while ($rows = $query->fetch_assoc()) {
                        echo
                            "<tr>
									<td>" . $no++ . "</td>
									<td>" . $rows['office_code'] . "</td>
									<td>" . $rows['account_no'] . "</td>
									<td>" . $rows['bank_code'] . "</td>
									<td>" . $rows['branch_code'] . "</td>
                                    <td>" . $rows['beg_chq_no'] . "</td>
									<td>" . $rows['chq_leaf_no'] . "</td>                                    
									<td>" . $rows['status_date'] . "</td>
									<td>" . $rows['ss_creator'] . "</td>
                                 
								</tr>";
                    }
                    ?>
                </table>
            </div>
        </div>
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
<script type="text/javascript">
    $(document).ready(function() {
        $("#803000").addClass('active');
        $("#800000").addClass('active');
        $("#800000").addClass('is-expanded');
    });
</script>
<?php
$conn->close();
?>
</body>

</html>