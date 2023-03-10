{{--13.02.2021--}}
<div class="slider q-mb20 q-pt20">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="brand-logo-wrapper pt-20 pb-20">
                    <div class="single-banners2-logo">
                        @foreach($banners2 as $key => $data)
                            <a href="{{$data->link}}">
                                <img src="{{$data->filename}}" class="img-fluid q-banner">
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    // https://kenwheeler.github.io/slick/

    $('.single-banners2-logo').slick({
        autoplay: true,
        dots: false,
        arrows: true,
        prevArrow: '',
        nextArrow: '',
    });

</script>

