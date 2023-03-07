<?php
    $user_name = $_POST['user_name'] ?? '';
    $user_email = $_POST['user_email'] ?? '';
    $message = "Recebi uma solicitação para comprar o aplicativo.\n";
    $message .= "Nome de Usuário: ".$user_name."\n";
    $message .= "Email: ".$user_email."\n";
    $subject = "WaWhatsappMarketing";
    $emailTo = "oneoutlet@oneoutlet.site";

    mail($emailTo, $subject, $message);

    return true;