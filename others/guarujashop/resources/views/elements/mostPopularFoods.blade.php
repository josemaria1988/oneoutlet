@inject('topfoods', 'App\TopFoods')

<div class="slider related-product-slider mb-35" style="background-color: red;margin-top:25px;padding:25px 0px;background-image:url(images/background_1.png)">
    <div class="container q-card" style="position:relative;background:transparent">
        <div style="position:absolute;width:100%;height:100%;background-color:white;margin-left:-15px;"></div>
        <div class="row">
            <div class="col-lg-12">
                <div class="q-section-title">
                    <h3>{{$lang->get(145)}}</h3>  {{--Most popular products--}}
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="banner-slider-container" id="mostpopular-slider-container">

                </div>
            </div>
        </div>
    </div>
</div>

<script>
    console.log("most popular start");

    @include('elements.topfoods', array('products' => $topfoods->mostPopular(), 'type' => 1, 'parent' => 'mostpopular-slider-container'))

    console.log("most popular end");
</script>
