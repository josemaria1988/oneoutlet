<?php

echo $_GET['success'];
echo $_POST['item_number'];

if (isset($_GET['success']) && $_GET['success'] == 'true') {
// assign posted variables to local variables
	$item_number = $_POST['item_number'];
	$item_name = $_POST['item_name'];
	$payment_status = $_POST['payment_status'];
	$amount = $_POST['mc_gross'];
	$currency = $_POST['mc_currency'];
	$txn_id = $_POST['txn_id'];
	$receiver_email = $_POST['receiver_email'];

// $payer_email = $_POST['payer_email'];

	// // check that receiver_email is your PayPal business email
	// if (strtolower($receiver_email) != strtolower(PAYPAL_EMAIL)) {
	// 	error_log(date('[Y-m-d H:i e] ').
	// 		"Invalid Business Email: $req" . PHP_EOL, 3, IPN_LOG_FILE);
	// 	exit();
	// }

	// // check that payment currency is correct
	// if (strtolower($currency) != strtolower(CURRENCY)) {
	// 	error_log(date('[Y-m-d H:i e] '). 
	// 		"Invalid Currency: $req" . PHP_EOL, 3, IPN_LOG_FILE);
	// 	exit();
	// }

}
?>