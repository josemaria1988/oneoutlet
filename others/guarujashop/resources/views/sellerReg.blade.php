@inject('lang', 'App\Lang')
@inject('docs', 'App\Docs')
@inject('currency', 'App\Currency')
@inject('seller', 'App\Seller')

<html class="is-smooth-scroll-compatible is-loading" lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="theme-color" content="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">

@include('elements.head', array('title' => $lang->get(157))) {{--Seller Registration--}}

<body style="padding-top: 40px!important;">

<header>
    <div class="header-top pt-10 pt-lg-10 pt-md-10">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center text-sm-left">
                    
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12  text-center text-sm-right">
                    <div class="header-top-menu">
                        <ul>
                            <li><a href="{{route('/sellerReg')}}">{{$lang->get(157)}}</a></li> {{--Seller Registration--}}
                            @if (Auth::check())
                                <li>
                                    <a href="{{route('/chat')}}" style="display: inline-block;">{{$lang->get(146)}}</a>  {{--Chat--}}
                                    <div id="chat-count" style="background-color: red; height: 20px; width: 20px; border-radius: 50%; display: inline-block" hidden>
                                        <div id="chat-messages-count" style="display: table; margin: 0 auto; color: white; vertical-align: middle; text-align: center;">0</div>
                                    </div>
                                </li>
                            @endif
                            <li><a href="{{route('/account')}}">{{$lang->get(41)}}</a></li> {{--My account--}}
                            <li><a href="{{route('/wishlist')}}">{{$lang->get(42)}}</a></li> {{--Wishlist--}}
                            @if (Auth::check())
                                <li><a href="{{route('/cart')}}">{{$lang->get(113)}}</a></li> {{--View Cart--}}
                                <li><a onclick="logoutFromAccount();" href="#" >{{$lang->get(56)}}</a></li> {{--Logout--}}
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <link href="css/locomotive-scroll.css" rel="stylesheet">

</header>


<div class="o-scroll q-pt40" id="js-scroll" data-scroll-container style="background-color: white">

    <section data-scroll-section>
        <div class="o-layout_item ">
            <div class="c-speed-block" data-scroll data-scroll-speed="2">
                <div class="" data-scroll data-scroll-call="dynamicBackground" data-scroll-repeat>
                    <div class="o-image" data-scroll style="height: 300px">
                        <img class="c-speed-block_image" height="300px" src="{{$seller->getImage('sellerImage1')}}" >
                    </div>
                </div>
            </div>
        </div>
    </section>

<section data-scroll-section>
    <div class="o-container">
        <div class="c-summary" data-scroll>
            <div class="o-layout -gutter">
                <div class="o-layout_item u-2/5@from-medium">
                    <p class="c-summary_text" id="summaryText" style="max-width: calc(100% - 50px);font-weight:500">


                    </p>
                </div>
                <div class="o-layout_item u-3/5@from-medium">
                    <ul class="c-summary_list">
                        <li class="c-summary_list_item u-label" data-scroll>
                            <div  data-scroll-to class="q-mb20">
                                {{$seller->getText("sellerText11")}}
                                <span class="c-summary_list_icon u-icon"  style="cursor:pointer"  onClick="changetext('1')">
                                                <i class="material-icons">arrow_downward</i>
                                            </span>
                            </div>
                        </li>
                        <li class="c-summary_list_item u-label" data-scroll>
                            <div data-scroll-to class="q-mb20">
                                {{$seller->getText("sellerText12")}}
                                <span class="c-summary_list_icon u-icon"  style="cursor:pointer" onClick="changetext('2')">
                                                <i class="material-icons">arrow_downward</i>
                                            </span>
                            </div>
                        </li>
                        <li class="c-summary_list_item u-label" data-scroll>
                            <div data-scroll-to class="q-mb20">
                                {{$seller->getText("sellerText13")}}
                                <span class="c-summary_list_icon u-icon cursor-pointer " style="cursor:pointer" onClick="changetext('3')"><i class="material-icons">arrow_downward</i>
                                </span>
                            </div>
                        </li>
                      
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>





<section class="c-section" data-scroll-section style="">
    <div class="o-container" id="speed-control">
        <div class="o-layout -gutter">
            <div class="o-layout_item u-2/5@from-medium">
                <div class="c-section_infos " data-scroll data-scroll-speed="5" data-scroll-call="test">
                    <div class="c-section_infos_inner" data-scroll data-scroll-offset="200">
                        <h3 style="font-weight:700">
                            <!-- {{$seller->getText("sellerText20")}} -->
                            {{$lang->get(167)}}
                        </h3>
                    </div>
                </div>
            </div>
            <div class="o-layout_item" style="position:absolute; width: 25%; background-color:transparent">
                <div class="c-speed-block" data-scroll data-scroll-speed="2">
                    <div class="o-image_wrapper" data-scroll data-scroll-call="dynamicBackground" data-scroll-repeat style="background-color:transparent">
                        <div class="o-image" data-scroll>
                            <img class="c-speed-block_image" src="{{$seller->getImage('sellerImage2')}}" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="o-layout_item" style="position:absolute; width: 25%; margin-right:75%; margin-left:15%; padding-left:0px">
                <div class="c-speed-block" data-scroll data-scroll-speed="3">
                    <div class="o-image_wrapper" data-scroll data-scroll-call="dynamicBackground" data-scroll-repeat style="background-color:transparent">
                        <div class="o-image" data-scroll>
                            <img class="c-speed-block_image" style="margin-bottom: 0; margin-top:0; " src="{{$seller->getImage('sellerImage5')}}" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="o-layout_item" style="position:absolute; width: 25%; margin-left: 30%; ">
                <div class="c-speed-block" data-scroll data-scroll-speed="5">
                    <div class="o-image_wrapper" data-scroll data-scroll-call="dynamicBackground" data-scroll-repeat>
                        <div class="o-image" data-scroll>
                            <img class="c-speed-block_image" style="margin-bottom: 0; margin-top:0; " src="{{$seller->getImage('sellerImage3')}}" >
                        </div>
                    </div>
                </div>
            </div>
            <div class="o-layout_item" style="position:absolute; width: 25%; margin-left: -15%; margin-top: 5%">
                <div class="c-speed-block" data-scroll data-scroll-speed="3">
                    <div class="o-image_wrapper" data-scroll data-scroll-call="dynamicBackground" data-scroll-repeat>
                        <div class="o-image" data-scroll>
                            <img class="c-speed-block_image" style="margin-bottom: 0; margin-top:0; " src="{{$seller->getImage('sellerImage4')}}" >
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="c-section" data-scroll-section >

        <div class="o-container">
            <h3 style="text-align: center">Registro do Vendedor</h3>
            <div class="q-mt20 q-pb20" data-scroll data-scroll-speed="5" >
                <h3 id="finish" style="text-align: center; margin-top: 20px; margin-bottom: 20px" hidden>{{$lang->get(161)}}</h3> {{--Your data has been sent. We will contact you shortly.--}}
                <div id="form">
                    <p id="error" style="color: red; text-align: center; margin-top: 20px; margin-bottom: 20px" hidden></p>
                    @include('elements.form.text', array('label' => $lang->get(139), 'text' => $lang->get(158), 'id' => "name", 'request' => "true", 'maxlength' => "40"))  {{-- Name - Insert Name --}}
                    @include('elements.form.text', array('label' => $lang->get(52), 'text' => $lang->get(58), 'id' => "email", 'request' => "true", 'maxlength' => "40"))  {{-- Email - Insert Email --}}
                    @include('elements.form.text', array('label' => $lang->get(53), 'text' => $lang->get(159), 'id' => "password", 'request' => "true", 'maxlength' => "40"))  {{-- Password - Insert Password --}}
                    @include('elements.form.text', array('label' => $lang->get(73), 'text' => $lang->get(159), 'id' => "password2", 'request' => "true", 'maxlength' => "40"))  {{-- Confirm Password - Insert Password --}}
                    @include('elements.form.text', array('label' => $lang->get(163), 'text' => $lang->get(164), 'id' => "phone", 'request' => "true", 'maxlength' => "40"))
                    @include('elements.form.text', array('label' => $lang->get(165), 'text' => $lang->get(166), 'id' => "how", 'request' => "true", 'maxlength' => "40"))
                </div>
                <div id="button" class="mt-4">
                    @include('elements.form.button', array('label' => $lang->get(160), 'onclick' => "onSaveUser();"))  {{-- Send --}}
                </div>
            </div>
               
            

        </div>

</section>

@include('elements.bottom', array())

<script src="js/locomotive-scroll.min.js"></script>

<script>
    changetext(1);
    function changetext(val){
        console.log(document.getElementById("summaryText"));
        const valuetext = `faq${val}_text`;
        if(typeof (val) === 'undefined') val = 1;
        if(val == 1){
        document.getElementById("summaryText").innerHTML =  `{!! $seller->getfaq("sellerText1") !!}`;
        } else if(val == 2){
            document.getElementById("summaryText").innerHTML =  `{!! $seller->getfaq("sellerText2") !!}`;

        }else if(val == 3){
            document.getElementById("summaryText").innerHTML =  `{!! $seller->getfaq("sellerText3") !!}`;

        }
       

    }
    function onSaveUser(){
        if (document.getElementById("name").value === ""){
            document.getElementById("error").hidden = false;
            document.getElementById("error").innerHTML = "{{$lang->get(76)}}"; // Please enter User Name
            return;
        }
        if (document.getElementById("email").value === ""){
            document.getElementById("error").hidden = false;
            document.getElementById("error").innerHTML = "{{$lang->get(58)}}"; // Please enter email-address
            return;
        }
        if (document.getElementById("password").value === ""){
            document.getElementById("error").hidden = false;
            document.getElementById("error").innerHTML = "{{$lang->get(59)}}"; // Please enter password
            return;
        }
        if (document.getElementById("password").value != document.getElementById("password2").value){
            document.getElementById("error").hidden = false;
            document.getElementById("error").innerHTML = "{{$lang->get(77)}}"; // Passwords are not equals
            return;
        }
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            },
            type: 'POST',
            url: '{{ url("webSellerSave") }}',
            data: {
                name: document.getElementById("name").value,
                email: document.getElementById("email").value,
                password: document.getElementById("password").value,
            },
            success: function (data){
                console.log(data);
                document.getElementById("button").hidden = true;
                document.getElementById("form").hidden = true;
                document.getElementById("finish").hidden = false;
                var obj = {
                    email: document.getElementById("email").value,
                    name: document.getElementById("name").value,
                    password: document.getElementById("password").value,
                    phone:document.getElementById("phone").value,
                    how:document.getElementById("how").value
                };
                sendFormDetails(obj);
                sendMail(document.getElementById("email").value);
            },
            error: function(e) {
                document.getElementById("error").hidden = false;
                document.getElementById("error").innerHTML = "{{$lang->get(89)}}"; // Something went wrong
                console.log(e);
            }}
        );
    }
    function sendFormDetails(obj){
        $.ajax({
        url: 'http://us-central1-seu-bom-vizinho.cloudfunctions.net/sendRegMail',
        dataType: "json",
        method: 'POST',
        crossDomain: true,
        data: obj,
        success: function(data){
          console.log('succes: '+data);
        }
      });
    }
    function sendMail(mailID){
        $.ajax({
        url: 'http://us-central1-seu-bom-vizinho.cloudfunctions.net/sendInviteMail',
        dataType: "json",
        method: 'POST',
        crossDomain: true,
        data: {
            email:mailID
        },
        success: function(data){
          console.log('succes: '+data);
        }
      });
       
    }
</script>

</body>
</html>
