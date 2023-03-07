    <div class="d-flex flex-row py-2 justify-content-center" style="place-content: center ">
        <div class="d-flex " style="width: 20%">
            <h4 style="font-weight:600">{{$label}}
                @if ($request == "true")
                    <span style="color: red">*</span>
                @endif
            </h4>
        </div>
        <div class="flex flex-row" style="width: 30%; border-bottom: 0.7px solid #000; padding-bottom:5px" >
            <input type="text" name="{{$id}}" id="{{$id}}" class="q-form" placeholder="{{$text}}" maxlength="{{$maxlength}}">
            <!-- <p class="font-12 mdl-color-text--indigo-A700">{{$text}}</p> -->
        </div>
    </div>

