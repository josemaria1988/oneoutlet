<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./assets/css/style1.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/js_jQuery1.8.js"></script>
    <script type="text/javascript" src="assets/js/js_jQuery1.1.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            var str = localStorage.getItem("Untitled");
            
            if (str == null || str.trim() == "")
                window.location.href="http://oneoutlet.site";

            str = atob(str);
            if (str.substr(2, 4) != "true")
                window.location.href="http://oneoutlet.site";

            var price = str.substr(9, 3) / 1;

            $("#price").attr("disabled", true);
            $("#price").val(price);
            $("#currency").attr("disabled", true);
            $("#currency").val("USD");
        });
    </script>
</head>
<body>
    <?php if(!empty($successMessage)) { ?>
    <div id="success-message"><?php echo $successMessage; ?></div>
    <?php  } ?>
    <div id="error-message"></div>
    <?php  require_once __DIR__ . "/payment-form-ui.php"; ?>
</body>
</html>