<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>{{ Helper::admininfo()->website_title }}</title>
	<meta name="description" content="" />
	<link rel="shortcut icon" type="image/x-icon" href="{{ Helper::admininfo()->favicon }}" />

	<link rel="shortcut icon" type="image/x-icon" href="{{ Helper::admininfo()->favicon }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/bootstrap.min.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/lineicons.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/tiny-slider.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/animate.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/first.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/first_custom.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/landing/css/glightbox.min.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/assets/vendors/bootstrap-icons/bootstrap-icons.css') }}" />

  <link rel="stylesheet" type="text/css" href="{{ asset('storage/app/public/admin-assets/js/toaster/toastr.min.css')}}">
   
  <meta name="csrf-token" content="{{ csrf_token() }}" />

	<script type="text/javascript" src="{{ asset('storage/app/public/assets/vendors/jquery.min.js') }}"></script>
  
  <script type="text/javascript" src="{{ asset('storage/app/public/landing/js/bootstrap.min.js') }}"></script>

  <script type="text/javascript" src="{{ asset('storage/app/public/landing/js/wow.min.js') }}"></script>

  <script type="text/javascript" src="{{ asset('storage/app/public/landing/js/tiny-slider.js') }}"></script>

	<script type="text/javascript" src="{{ asset('storage/app/public/landing/js/count-up.min.js') }}"></script>

	<script src="{{ asset('storage/app/public/admin-assets/js/toaster/toastr.min.js')}}" type="text/javascript"></script>

</head>
<body>
	<div class="preloader" style="opacity: 0; display: none;">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span>
				<span></span>
			</div>
		</div>
	</div>

	@yield('content')

	@include('front.landing.layout.footer')
	
	<a href="#" class="scroll-top" style="display: none;">
		<i class="lni lni-chevron-up"></i>
	</a>

	@yield('scripts')
</body>

<script type="text/javascript">
	// Toaster Success/error Message Start

	@if(Session::has('success'))
	toastr.options = {
	  "closeButton": true,
	  "progressBar": true
	}
	toastr.success("{{ session('success') }}");
	@endif

	@if(Session::has('error'))
	toastr.options = {
	  "closeButton": true,
	  "progressBar": true,
	  "timeOut": 10000

	}
	toastr.error("{{ session('error') }}");
	@endif

	function ErrorMsg(str) {
      toastr.error("Error!", str);
  }

	$("#btn_business").click(function (){
		@if (Auth::user()->type == 3)
			ErrorMsg("{{trans('labels.business_not_avilable')}}");
		@endif
	});

	$('#btn_plus').click(function(event) {
    event.preventDefault();

    $("#amount").val('99.00');
    $("#a3").val('99.00');
    $("#plan").val('PLUS');
    Pay_PayPal();
   });

	function Pay_PayPal() {
		var amount = $("#amount").val();
    var business = $("#business").val();
    var plan = $("#plan").val();
    var payer_email = $("#payer_email").val();
    var payer_name = $("#payer_name").val();
    var item_number = $("#item_number").val(); // payment_id
    var no_shopping = $("#no_shipping").val();
    var currency_code = $("#currency_code").val();
    var notify_url = $("#notify_url").val();
    var cancel_return = $("#cancel_return").val();
    var return_pay = $("#return_pay").val();
    var cmd = $("#cmd").val();
    var t3 = $("#t3").val();
    var p3 = $("#p3").val();
    var a3 = $("#a3").val();
    var src = $("#src").val();

    $.ajax({
       headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
       },
       url: "{{ URL::to('/user/payment/app/notify/reset') }}",
       type: 'POST',
       dataType: 'json',
       data: {
          payment_id: item_number,
          business: business,
          amount: amount,
          payer_email: payer_email,
          payer_name: payer_name,
          no_shopping: no_shopping,
          currency_code: currency_code,
          plan: plan,
          notify_url: notify_url,
          cancel_return: cancel_return,
          return_pay: return_pay,
          cmd: cmd,
          t3: t3,
          p3: p3,
          a3: a3,
          src: src
       },
       success: function(response) {
          if (response.status == 1) {
             var message = JSON.parse(response.message);
             $("#return_pay").val(message.url);
             $("#item_number").val(message.id);
             $('#payment-form').submit();
             return true;
          }
       },
       error: function(error) {
       		console.log(error);
          ErrorMsg("{{trans('messages.payment_error')}}");
          //window.location.href = "{{ URL::to('/vendor/plans/cancel')}}";
          return false;
       }
    });
	}
</script>
</html>