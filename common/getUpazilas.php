<?php
require_once ("../dbcontroller.php");
$db_handle = new DBController();
if (! empty($_POST["district_id"])) {
    $query = "SELECT * FROM upazilas WHERE district_ID = '" . $_POST["district_id"] . "' order by name asc";
    $results = $db_handle->runQuery($query);
    ?>
<option value disabled selected>Select upazilas</option>
<?php
    foreach ($results as $upazilas) {
        ?>
<option value="<?php echo $upazilas["id"]; ?>"><?php echo $upazilas["name"]; ?></option>
<?php
    }
}
?>