<?php
namespace Phppot;

require_once __DIR__ . '/config.php';
$currencies = Config::getCurrency();
$country = Config::getAllCountry();
?>

<link rel="stylesheet" type="text/css" href="./assets/css/stripe.css">
<div class="stripe_header">
<div class="stripe_payment">
    <h1>Stripe payment</h1>
    <div class="phppot-container">
        <div id="payment-box"
            data-consumer-key="<?php echo Config::STRIPE_PUBLISHIABLE_KEY; ?>"
            data-create-order-url="<?php echo Config::CREATE_STRIPE_ORDER;?>"
            data-return-url="<?php echo Config::THANKYOU_URL;?>">
            <form class="mb-3 mt-3 form_main">
            <div class="mb-3 mt-3 name input-box">
                <input type="text" name="customer_name" class="form-control"
                    id="customer_name" placeholder="Name">
                <div class="invalid-feedback error_name">Please fill out this field.</div>
            </div>
            
            <div class="mb-3 mt-3 email input-box">
                <input type="text" name="email" class="form-control" id="email" placeholder="Email">
                <div class="invalid-feedback error_email">Please fill out this field.</div>
            </div>
            
            <div class="mb-3 mt-3 address input-box">
                <input type="text" name="address" class="form-control" id="address" placeholder="Address">
                <div class="invalid-feedback error_address">Please fill out this field.</div>
            </div>
            
            <div class="mb-3 mt-3 country input-box">
                <input list="country-list" name="country" class="form-control" id="country" placeholder="Country">
                <div class="invalid-feedback error_country">Please fill out this field.</div>
                <datalist id="country-list">
                    <?php foreach ($country as $key => $val) { ?>
                 <option value="<?php echo $key;?>"><?php echo $val;?></option>
                    <?php }?>
                        </datalist>
            </div>
            
            <div class="mb-3 mt-3 postal input-box">
                <input type="text" name="postal_code" class="form-control" id="postal_code" placeholder="Postal code">
                <div class="invalid-feedback error_postal">Please fill out this field.</div>
            </div>
            
            <div class="mb-3 mt-3 notes input-box">
                <input type="text" name="notes" class="form-control" id="notes" placeholder="Description">
                <div class="invalid-feedback error_notes">Please fill out this field.</div>
            </div>
            
            <div class="gold">
                <div class="mb-3 mt-3 amount input-box">
                    <input type="text" name="price" class="form-control" id="price" placeholder="Amount">
                    <div class="invalid-feedback error_amount">Please fill out this field.</div>
                </div>
                
                <div class="mb-3 mt-3 currency input-box">
                    <input list="currency-list" name="currency" class="form-control" id="currency" placeholder="Currency">
                    <div class="invalid-feedback error_currency">Please fill out this field.</div>
                    <datalist id="currency-list">
                    <?php foreach ($currencies as $key => $val) { ?>
                     <option value="<?php echo $key;?>"><?php echo $val;?></option>
                        <?php }?>
                            </datalist>

                </div>
            </div>
            
            <div class="row">
                <div id="card-element">
                    <!--Stripe.js injects the Card Element-->
                </div>
            </div>
            
            <div class="row">
                <button class="btnAction" id="btn-payment"
                    onclick="confirmOrder(event);">
                    <div class="spinner hidden" id="spinner"></div>
                    <span id="button-text">Send Payment</span>
                </button>
                <p id="card-error" role="alert"></p>
            </div>
        </form>
        </div>
            <?php
            if (! empty($_GET["action"]) && $_GET["action"] == "success") {
                ?><div class="success">Thank you for the payment.</div><script type="text/javascript">
                    localStorage.removeItem("Untitled");
                    window.location.href = "http://oneoutlet.site";
                </script>
                <div class="serial">
                    <div>
                        <input type="text" name="serial" class="form-control">
                        <button></button>
                    </div>
                </div>
        <?php
            }
            ?>
    </div>
</div>
</div>
<script src="https://js.stripe.com/v3/"></script>
<script src="./assets/js/card.js"></script>