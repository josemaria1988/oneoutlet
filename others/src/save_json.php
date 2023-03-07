<?php
    $json_data = $_POST['json_data'] ?? '';
    $data_success = $_POST['data_success'] ?? '';
    $res_data = $_POST['res_data'] ?? '';
    
    if ($data_success == "success_data") {
        $myfile = fopen("data.json", "w") or die("Unable to open file!");
        fwrite($myfile, $json_data);
        fclose($myfile);

        echo $res_data;
    }

    return true;