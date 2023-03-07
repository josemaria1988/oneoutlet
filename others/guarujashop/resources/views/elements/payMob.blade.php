@inject('settings', 'App\Settings')
@inject('currency', 'App\Currency')
@inject('basket', 'App\Basket')

<script>
    // let _apiKey = "ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SndjbTltYVd4bFgzQnJJam8zT1RBM09Dd2libUZ0WlNJNkltbHVhWFJwWVd3aUxDSmpiR0Z6Y3lJNklrMWxjbU5vWVc1MEluMC45LWZnU0NSY0VfQ1RFdC00OUhXdHlHbFJGbFNzbl8wQUpFcFJFQ3VyLWt4WlV6bmdmS3hKV3VNV3gtZmtxNHhEbzFBNFRtLVcxXy1kLTRwb1FFNVNNZw==";
    // let _frame = "191358";
    // let _integrationId = "202620";
    //
    //
    //
    var accessToken = "";
    var _orderId = "";
    var clientId = 'HPwzUaWimE5AF45R';
  var clientSecret = "rR,q.{A&L{AmJb&W?):vB$(39P@CQaoq";
    async function JUNOPayment() {
        var junoToken = localStorage.getItem('junoToken');
        console.log(`this is juno token ${junoToken}`);
        if (junoToken == null || junoToken.length == 0) {
            var credentials = `${clientId}:${clientSecret}`;
            //   var bytesIn = latin1.encode(credentials);
            //   Codec<String, String> stringToBase64 = utf8.fuse(base64);
            // String encoded = base64.encode(bytesIn);
            var encoded = btoa(credentials);
            console.log(encoded);
            var body = JSON.stringify({
                'grant_type': 'client_credentials',
            });
            var requestHeaders = {
                'Authorization': `Basic ${encoded}`,
            'Access-Control-Allow-Origin': '*',
                            'Content-Type': 'application/x-www-form-urlencoded',

            };
            var options = {
'Access-Control-Request-Headers': 'Authorization',
'Origin': 'https://copocheio.site/'
            }
            fetch("https://sandbox.boletobancario.com/authorization-server/oauth/token", {
  method: "POST",
  headers: requestHeaders, 
  body: body
}).then(res => {
  console.log("Request complete! response:", res);
  var data = res;
   if (data.access_token != null && data.access_token !== "") {
                        localStorage.setItem("junoToken", `${data.access_token}`);
                        accessToken = data.access_token;
                        // createCharge();
                    }
}).catch(err => {
    console.log(err);
}); 
        //     try{
        //     $.ajax({
        //         headers: {
        //         'Authorization': `Basic ${encoded}`,
        //     'Access-Control-Allow-Origin': '*'
        //     },
        //         type: 'POST',
        //         beforeSend :function (xhr)
        //  {
        //  xhr.setRequestHeader("Authorization", `Basic ${encoded}`);
        //  xhr.setRequestHeader('Access-Control-Allow-Origin', '*');
        //  console.log(xhr.statusText);
        //  },
        //                         crossDomain :true,
        //                         // method:options,
        //         url: 'https://sandbox.boletobancario.com/authorization-server/oauth/token',
        //         data: body,
        //                         contentType :'application/x-www-form-urlencoded',

        //         success: function(data) {
        //             console.log(data);
        //             if (data.access_token != null && data.access_token !== "") {
        //                 localStorage.setItem("junoToken", `${data.access_token}`);
        //                 accessToken = data.access_token;
        //                 // createCharge();
        //             }
        //         },
        //         error: function(e) {
        //             console.log(e.error);
        //             showNotification("pastel-danger", "{{$lang->get(89)}} Details see in console.", "bottom", "center", "", ""); // Something went wrong
        //         }
        //     });
        //     }catch(err){
        //         console.log(err);
        //     }


            //   dprint("login: $url, $body");
            //   dprint('Response status: ${response.statusCode}');
            //   dprint('Response body: ${response.body}');
            //   var jsonResult = json.decode(response.body);
            //   localStorage.setItem("junoToken", "${jsonResult['access_token']}");
            //   accessToken = "${jsonResult['access_token']}";
        } else {
            accessToken = junoToken;
        }
        // if (paymentType == 1) {
        //   await generatePixKey();
        // }
        // pixKey = "57958e76-d08f-45e6-a9e1-325025e8c4e4";
        await createCharge();
    }

    function formatDate(date) {
        var d = new Date(date),
            month = '' + (d.getMonth() + 1),
            day = '' + d.getDate(),
            year = d.getFullYear();

        if (month.length < 2)
            month = '0' + month;
        if (day.length < 2)
            day = '0' + day;

        return [year, month, day].join('-');
    }

    function createCharge() {
        var now = new Date();
         Date.prototype.addHours= function(h){
    this.setHours(this.getHours()+h);
    return this;
}
now.addHours(1);
        // now.setHours(now.getHours() + 1);

        // var formatter = DateFormat('yyyy-MM-dd');
        var formatted = formatDate(now);
        console.log('this is cnpj $cnpj');
        var cnpjStr = '16666841808';
        // var firstCnpj = (cnpj != null && cnpj.length > 0) ?
        //     cnpj.replaceAll('.', '') :
        //     '16666841808';
        // var cnpjStr = (cnpj != null &&
        //         cnpj.length > 0 &&
        //         firstCnpj != null &&
        //         firstCnpj.length > 0) ?
        //     firstCnpj.replaceFirst('-', '').trim() :
        //     '16666841808';
        console.log(cnpjStr);
        console.log(formatted);
        // 899f7f59-9c8b-4d0c-bae9-9cbad3a4f73b"
        let prices = getPrices();
        let total = (prices._total * 100).toFixed(0);
        var requestHeaders = {
            'Authorization': `Bearer ${accessToken}`,
            'X-Api-Version': '2',
            'X-Resource-Token': '18B79CFE7383089EFA61BBCD5ABF4F71ACED1A8536DB7A5279C9C71A78D399B7',
            'Content-Type': 'application/json;charset=UTF-8',
            'Access-Control-Allow-Origin': 'https://copocheio.site/'
        };
        // "amount": double.parse(total),

        var body = JSON.stringify({
            "charge": {
                "description": `Pagamento de R\$${total} para $orderName`,
                "amount": 1,
                "dueDate": `${formatted}`,
                "paymentTypes": ["CREDIT_CARD"]
            },
            "billing": {
                "name": `${document.getElementById("basket2_shopName").value}`,
                "document": "$cnpjStr",
                "email": "dhairyasinghraghav@gmail.com",
                "phone": "{{$userinfo->getUserPhone()}}",

            }
        });
        try {
            $.ajax({
                headers: requestHeaders,
                type: 'POST',
                                crossDomain :true,

                url: 'https://sandbox.boletobancario.com/api-integration/charges',
                data: body,
                                contentType : 'application/json;charset=UTF-8',

                success: function(data) {
                    console.log(data);
                    if (data._embedded != null && data._embedded.charges !== "") {
                        localStorage.setItem("chargeId", `${data._embedded.charges[0].id}`);
                        accessToken = data.access_token;
                        var checkoutUrl = data._embedded.charges[0].checkoutUrl;
                        // createCharge();
                        console.log(url);
                        //CreateOrder();
                        window.location.href = checkoutUrl;
                    }
                },
                error: function(e) {
                    console.log(e);
                    showNotification("pastel-danger", "{{$lang->get(89)}} Details see in console.", "bottom", "center", "", ""); // Something went wrong
                }
            });
        } catch (err) {
            console.log(err);
        }

    }

    function payMobPayment() {
        let data = `{
            "api_key": "{{$settings->pmPayMobApiKey()}}"
        }`;
        console.log('payMobPayment', data);
        $.ajax({
            headers: {
                'content-type': 'application/json',
            },
            type: 'POST',
            url: 'https://accept.paymobsolutions.com/api/auth/tokens',
            data: data,
            success: function(data) {
                console.log(data);
                if (data.token != null && data.token !== "") {
                    accessToken = data.token;
                    payMobPayment2();
                }
            },
            error: function(e) {
                console.log(e);
                showNotification("pastel-danger", "{{$lang->get(89)}} Details see in console.", "bottom", "center", "", ""); // Something went wrong
            }
        });
    }

    function payMobPayment2() {
        let prices = getPrices();
        let total = (prices._total * 100).toFixed(0);
        let data = `{
                "auth_token": "${accessToken}",
                "delivery_needed": "false",
                "amount_cents": "${total}",
                "currency": "EGP"
            }`;
        console.log("payMobPayment2", data);
        $.ajax({
            headers: {
                'content-type': 'application/json',
            },
            type: 'POST',
            url: 'https://accept.paymobsolutions.com/api/ecommerce/orders',
            data: data,
            success: function(data) {
                console.log(data);
                if (data.id != null && data.id !== "") {
                    _orderId = data.id;
                    payMobPayment3(total);
                }
            },
            error: function(e) {
                console.log(e);
                showNotification("pastel-danger", "{{$lang->get(89)}} Details see in console.", "bottom", "center", "", ""); // Something went wrong
            }
        });
    }

    function payMobPayment3(total) {
        let order_info = JSON.parse(localStorage.getItem("order_info")) || [];
        if (order_info.total == null)
            return;

        let data = `{
            "auth_token": "${accessToken}",
            "amount_cents": "${total}",
            "expiration": 3600,
            "order_id": "${_orderId}",
            "billing_data": {
                "apartment": "${document.getElementById("pmApartment").value}",
                "email": "${document.getElementById("pmEmail").value}",
                "floor": "${document.getElementById("pmFloor").value}",
                "first_name": "${document.getElementById("pmFirstName").value}",
                "street": "${document.getElementById("pmStreet").value}",
                "building": "${document.getElementById("pmBuilding").value}",
                "phone_number": "${document.getElementById("pmPhone").value}",
                "shipping_method": "no",
                "postal_code": "${document.getElementById("pmPostalCode").value}",
                "city": "${document.getElementById("pmCity").value}",
                "country": "${document.getElementById("pmCountry").value}",
                "last_name": "${document.getElementById("pmLastName").value}",
                "state": "${document.getElementById("pmState").value}"
            },
            "currency": "EGP",
            "integration_id": {{$settings->pmPayMobIntegrationId()}},
            "lock_order_when_paid": "false"
            }`;
        console.log("payMobPayment2", data);
        $.ajax({
            headers: {
                'content-type': 'application/json',
                'Authorization': 'Bearer ' + accessToken
            },
            type: 'POST',
            url: 'https://accept.paymobsolutions.com/api/acceptance/payment_keys',
            data: data,
            success: function(data) {
                console.log(data);
                if (data.token != null && data.token !== "") {
                    token = data.token;
                    var url = `https://accept.paymob.com/api/acceptance/iframes/{{$settings->pmPayMobFrame()}}?payment_token=${token}`;
                    console.log(url);
                    //CreateOrder();
                    window.location.href = url;
                }
            },
            error: function(e) {
                console.log(e);
                showNotification("pastel-danger", "{{$lang->get(89)}} Details see in console.", "bottom", "center", "", ""); // Something went wrong
            }
        });
    }
</script>