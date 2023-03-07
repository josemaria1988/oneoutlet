<?php

//if (isset($_GET['success']) && $_GET['success'] == 'true') {
//error_reporting(1);
//include_once("db_connect.php");
//Store transaction information into database from PayPal
$item_number = $_GET['item_number']; 
$txn_id = $_GET['tx'];
$payment_gross = $_GET['amt'];
$currency_code = $_GET['cc'];
$payment_status = $_GET['st'];
//Get product price to store into database
//$sql = "SELECT * FROM products WHERE id = ".$item_number;
//$resultset = mysqli_query($conn, $sql) or die("database error:". mysqli_error($conn));
//$row = mysqli_fetch_assoc($resultset);
//if(!empty($txn_id) && $payment_gross == $row['price']){
//if(!empty($txn_id) && ($payment_gross >= 45)){
if (isset($_GET['token']) && strlen($_GET['token']) > 23) {
	$str0 = base64_decode($_GET['token']);
	$item_number = substr($str0, 0, 39);
	$payment_gross = substr($str0, 40, 5);

	if ($payment_gross >= "89.90" || $payment_gross == "199.0")
	{
		$payment_gross = (float)$payment_gross;
		$str = "Normal";
		if ($payment_gross >= 89.90) $str = "Pro";
		if ($payment_gross == 199.0) $str = "Plugin";
	    //Insert transaction data into the database
	    //mysqli_query($conn, "INSERT INTO payments(item_number,txn_id,payment_gross,currency_code,payment_status) VALUES('".$item_number."','".$txn_id."','".$payment_gross."','".$currency_code."','".$payment_status."')");
		//$last_insert_id = mysqli_insert_id($conn);  	
?>
	<h1>Your payment has been successful.</h1>
<?php
$answer=shell_exec("WaSenderConsoleKeyGen.exe $item_number $str 30");
?>
	<!-- <h1>License key of a month: </h1><textarea style="width: 30vw; height: 10vw; margin-left: 10vw;"><?php //if($answer == "") echo "There is something wrong. You can connect support team."; else echo $answer ?></textarea> -->
<?php	
}else{
?>
	<h1>Your payment has failed.</h1>
<?php
}
}else{
?>
	<h1>Your payment has failed.</h1>
<?php
}
?>