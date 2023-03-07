<?php
    require_once 'vendor/autoload.php'; // You have to require the library from your Composer vendor folder

    MercadoPago\SDK::setAccessToken("TEST-8593115590496460-030622-6828aec23491e935e588c10c01908dcc-1324930812"); // Either Production or SandBox AccessToken

    $payment = new MercadoPago\Payment();
    
    $payment->transaction_amount = 141;
    $payment->token = "YOUR_CARD_TOKEN";
    $payment->description = "Ergonomic Silk Shirt";
    $payment->installments = 1;
    $payment->payment_method_id = "visa";
    $payment->payer = array(
      "email" => "larue.nienow@email.com"
    );

    $payment->save();

    echo $payment->status;
  ?>