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

  <link rel="stylesheet" href="{{ asset('storage/app/public/assets/owlcarousel/assets/owl.carousel.min.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/assets/owlcarousel/assets/owl.theme.default.min.css') }}" />

  <link rel="stylesheet" href="{{ asset('storage/app/public/assets/vendors/bootstrap-icons/bootstrap-icons.css') }}" />

	<script type="text/javascript" src="{{ asset('storage/app/public/assets/vendors/jquery.min.js') }}"></script>

	<script type="text/javascript" src="{{ asset('storage/app/public/front/js/owl.carousel.min.js') }}"></script>
  
  <script type="text/javascript" src="{{ asset('storage/app/public/landing/js/bootstrap.min.js') }}"></script>

  <script type="text/javascript" src="{{ asset('storage/app/public/landing/js/wow.min.js') }}"></script>

  <script type="text/javascript" src="{{ asset('storage/app/public/landing/js/tiny-slider.js') }}"></script>

	<script type="text/javascript" src="{{ asset('storage/app/public/landing/js/count-up.min.js') }}"></script>
	
	<script type="text/javascript" src="{{ asset('storage/app/public/landing/js/first.js') }}"></script>  
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

	@include('front.landing.layout.header')

	<section class="hero-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5 col-md-12 col-12 wow fadeInDown hero_desc" data-wow-delay=".4s">
					<div class="hero-content">
						<h4>Wa Whatsapp Marketing</h4>
						<h1>Venda e atenda com Chatbots pelo WhatsApp</h1>
						<p>SOFTWARE DE MARKETING EMPRESARIAL WHATSAPP</p>
						<div class="button">
							<a href="#" class="btn ">Try for free</a>
						</div>
					</div>
				</div>

				<div class="col-lg-7 col-12">
					<div class="hero-image wow fadeInRight hero_logo" data-wow-delay=".6s">
						<img class="main-image" src="{{asset('storage/app/public/landing/img/first_header.png')}}" alt="#" data-xblocker="passed" style="visibility: visible;">
					</div>
				</div>
			</div>
		</div>
	</section>

	@include('front.landing.layout.features')

	@include('front.landing.layout.services')

	@include('front.landing.layout.team')

	@include('front.landing.layout.clients')

	@include('front.landing.layout.blogs')

	@include('front.landing.layout.faq')

	@include('front.landing.layout.contact')

	@include('front.landing.layout.download')

	@include('front.landing.layout.footer')

	<a href="#" class="scroll-top" style="display: none;">
		<i class="lni lni-chevron-up"></i>
	</a>
</body>
<script type="text/javascript">
	var owl = $('.owl-carousel');
	owl.owlCarousel({
	    loop:true,
	    nav:true,
	    margin:10,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:2
	        },
	        960:{
	            items:3
	        }
	    }
	});
	owl.on('mousewheel', '.owl-stage', function (e) {
    if (e.deltaY>0) {
        owl.trigger('next.owl');
    } else {
        owl.trigger('prev.owl');
    }
    e.preventDefault();
	});
</script>
</html>