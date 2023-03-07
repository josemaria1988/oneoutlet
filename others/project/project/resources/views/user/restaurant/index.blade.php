@extends('user.main')

@section('content')

@include('front.landing.layout.header')

<section>
	<div class="rest_header section">
		
	</div>
</section>

<section>
	<div class="list_body section">
		<div class="container">
			<div id="list_view" class="tab-pane product-list">
			@foreach($users as $user)
				<div class="row trending-place-item">
				<div class="col-md-6 no-pad-lr">
					<div class="trending-img">
						<img src="{{asset('storage/app/public/images/restaurant/item-1661511100.jpg')}}">
						<span class="trending-rating-green">7</span>
						<span class="save-btn">
							<i class="lni lni-heart-filled"></i>
						</span>
					</div>
				</div>
				<div class="col-md-6 no-pad-lr">
					<div class="trending-title-box">
						<h4><a href="{{ URL::to($user->slug)}}">Four Seasons Resort</a><span class="founder">Founder: {{$user->name}}</span></h4>
						<div class="customer-review">
							<div class="rating-summary float-left">
								<div class="rating-result" title="60%">
									<ul class="product-rating">
										<li class="lni lni-star-filled"></li>
										<li class="lni lni-star-filled"></li>
										<li class="lni lni-star-filled"></li>
										<li class="lni lni-star-half"></li>
										<li class="lni lni-star-half"></li>
									</ul>
								</div>
							</div>
							<div class="customer-review float-right">
								<p><a href="#">3 Reviews</a></p>
							</div>
						</div>
						<ul class="trending-address">
							<li>
								<i class="bi bi-geo-alt"></i>
								<p>4210 Khale Street,Florence,USA</p>
							</li>
							<li>
								<i class="lni lni-phone"></i>
								<p>+843-600-2040</p>
							</li>
							<li>
								<i class="lni lni-world"></i>
								<p>www.laresorta.com</p>
							</li>
						</ul>
						<div class="trending-bottom mar-top-15 pad-bot-30">
							<div class="trend-left float-left">
								<p>Brief:</p>
							</div>
							<div class="trend-right float-right">
								<div class="trend-open"><i class="lni lni-alarm-clock"></i>
									Open <p>till 11.00pm</p>
								</div>
							</div>
						</div>
						<div class="desc_brief">
							<p>Our restaurant specializes in making pizza.</p>
						</div>
					</div>
				</div>
				</div>
			@endforeach
			</div>
		</div>
	</div>
</section>

@section('content')

@section('scripts')
	<script type="text/javascript" src="{{ asset('storage/app/public/landing/js/first.js') }}"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('resources/views/user/restaurant/restaurant.css')}}">
@endsection