<?php
	// $conn = new mysqli("localhost","darululo_acc","Acc@1234!@#$","darululo_acc");
	$conn = new mysqli("localhost","root","","acc_management");
	$link=$conn;
	$conn->set_charset("utf8");
	// $connect = new PDO('mysql:host=localhost; dbname=darululo_acc;', 'darululo_acc', 'Acc@1234!@#$');
	$connect = new PDO('mysql:host=localhost; dbname=acc_management;', 'root', '');
$connect->exec("set names utf8");
?>