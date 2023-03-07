<?php



namespace App\Http\Controllers\front;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\DB;

use App\Models\Category;

use App\Models\Item;

use App\Models\Cart;

use App\Models\DeliveryArea;

use App\Models\Order;

use App\Models\Plans;

use App\Models\OrderDetails;

use App\Models\Settings;

use App\Models\User;

use App\Models\Payment;

use App\Models\Coupons;

use App\Models\Terms;

use App\Models\Privacypolicy;

use App\Models\Tablebook;

use App\Models\UserTemp;

use App\Models\Currency;

use Helper;

use URL;

use Paystack;

use Stripe\Stripe;

use Stripe\Customer;

use Stripe\Charge;

use Session;

use App;

class UserPayPalData{
    public $url; 
    public $user_id;
    public $name;
}

class HomeController extends Controller

{
    /**3

     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response

     */
    public function index(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $getcategory = Category::where('restaurant', @$getrestaurant->id)->where('is_available', '=', '1')->where('is_deleted', '2')->orderBy('id', 'DESC')->get();
        $getitem = Item::with(['variation', 'extras'])->where('restaurant', @$getrestaurant->id)->where('is_available', '1')->orderBy('id', 'DESC')->get();
        $settingdata = Settings::where('restaurant', @$getrestaurant->id)->select('language', 'template')->first();
        session()->put('direction', @$settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        if (@$settingdata->template == '1') {
            if (empty($getrestaurant)) {
                abort(404);
            } else {
                return view('front.template-1.home', compact('getcategory', 'getitem', 'getrestaurant'));
            }
        } else {
            if (App\Models\SystemAddons::where('unique_identifier', 'template')->first() != null && App\Models\SystemAddons::where('unique_identifier', 'template')->first()->activated) {
                $cartdata = Cart::select('id', 'item_id', 'item_name', 'item_image', 'item_price', 'extras_id', 'extras_name', 'extras_price', 'qty', 'price', 'tax', 'variants_id', 'variants_name', 'variants_price')
                    ->where('session_id', Session::getId())
                    ->where('restaurant', @$getrestaurant->id)
                    ->get();
                if (empty($getrestaurant)) {
                    abort(404);
                } else {
                    return view('front.template-2.home', compact('getcategory', 'getitem', 'getrestaurant', 'cartdata'));
                }
            } else {
                abort(404);
            }
        }
    }

    public function restaurants() {
        $users = User::where('users.type', '2')->orderBy('users.id', 'ASC')->get();
        return view('user.restaurant.index', compact('users'));
    }

    public function show(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $getcategory = Category::where('is_available', '=', '1')->where('is_deleted', '2')->where('restaurant', @$getrestaurant->id)->orderBy('id', 'DESC')->get();
        $getitem = Item::where('cat_id', '=', $request->id)->where('is_available', '1')->where('restaurant', @$getrestaurant->id)->orderBy('id', 'DESC')->paginate(9);
        $settingdata = Settings::where('restaurant', $getrestaurant->id)->select('language')->first();
        session()->put('direction', $settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        if ($settingdata->template == '1') {
            if (empty($getrestaurant)) {
                abort(404);
            } else {
                return view('front.template-1.home', compact('getcategory', 'getitem', 'getrestaurant'));
            }
        } else {
            if (empty($getrestaurant)) {
                abort(404);
            } else {
                return view('front.template-2.home', compact('getcategory', 'getitem', 'getrestaurant'));
            }
        }
    }
    public function details(Request $request)
    {
        $getitem = Item::with(['variation', 'extras'])->select('items.restaurant', 'items.id', \DB::raw("CONCAT('" . asset('/storage/app/public/item/') . "/', items.image) AS image"), 'items.image as image_name', 'items.item_name', 'items.item_price', 'items.tax', 'items.description', 'categories.name')
            ->join('categories', 'items.cat_id', '=', 'categories.id')
            ->where('items.id', $request->id)->first();
        if (count($getitem['variation']) <= 0) {
            $getitem->item_p = Helper::currency_format($getitem->item_price, $getitem->restaurant);
        }
        return response()->json(['ResponseCode' => 1, 'ResponseText' => 'Success', 'ResponseData' => $getitem], 200);
    }
    public function addtocart(Request $request)
    {
        try {
            $cart = new Cart;
            $cart->session_id = Session::getId();
            $cart->restaurant = $request->restaurant;
            $cart->item_id = $request->item_id;
            $cart->item_name = $request->item_name;
            $cart->item_image = $request->item_image;
            $cart->item_price = $request->item_price;
            $cart->tax = $request->tax;
            $cart->extras_id = $request->extras_id;
            $cart->extras_name = $request->extras_name;
            $cart->extras_price = $request->extras_price;
            $cart->qty = $request->qty;
            $cart->price = $request->price;
            $cart->variants_id = $request->variants_id;
            $cart->variants_name = $request->variants_name;
            $cart->variants_price = $request->variants_price;
            $cart->save();
            $count = Cart::where('session_id', Session::getId())->count();
            session()->put('cart', $count);
            session()->put('restaurant_id', $request->restaurant);
            return response()->json(['status' => 1, 'message' => 'Item has been added to your cart'], 200);
        } catch (\Exception $e) {
            return response()->json(['status' => 0, 'message' => $e], 400);
        }
    }

    public function cart(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $cartdata = Cart::select('id', 'item_id', 'item_name', 'item_image', 'item_price', 'extras_id', 'extras_name', 'extras_price', 'qty', 'price', 'tax', 'variants_id', 'variants_name', 'variants_price')
            ->where('session_id', Session::getId())
            ->where('restaurant', @$getrestaurant->id)
            ->get();
        $deliveryarea = DeliveryArea::where('restaurant', @$getrestaurant->id)->get();
        $paymentlist = array();
        if (\App\Models\SystemAddons::where('unique_identifier', 'payment')->first() != null && \App\Models\SystemAddons::where('unique_identifier', 'payment')->first()->activated) {
            $paymentlist = Payment::where('status', '1')->where('restaurant', @$getrestaurant->id)->get();
        }
        $settingdata = Settings::where('restaurant', $getrestaurant->id)->select('language')->first();
        session()->put('direction', $settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        
        $paypal = Payment::where('restaurant', $getrestaurant->id)->where('payment_name', 'PayPal')->first();
        $user = new UserPayPalData;

        if ($paypal->environment == 0)
            $paypal->ifsc = "https://www.PayPal.com/cgi-bin/webscr";
        else
            $paypal->ifsc = "https://www.sandbox.PayPal.com/cgi-bin/webscr";

        $user->user_id = $paypal->public_key;
        $user->name = $paypal->secret_key;
        $user->url = $paypal->ifsc;

        return view('front.cart', compact('cartdata', 'deliveryarea', 'getrestaurant', 'paymentlist', 'user'));
    }
    public function qtyupdate(Request $request)
    {
        if ($request->cart_id == "") {
            return response()->json(["status" => 0, "message" => "Cart ID is required"], 200);
        }
        if ($request->qty == "") {
            return response()->json(["status" => 0, "message" => "Qty is required"], 200);
        }
        $cartdata = Cart::where('id', $request->cart_id)
            ->get()
            ->first();
        if ($request->type == "decreaseValue") {
            $qty = $cartdata->qty - 1;
        } else {
            $qty = $cartdata->qty + 1;
        }
        $update = Cart::where('id', $request['cart_id'])->update(['qty' => $qty]);
        return response()->json(['status' => 1, 'message' => 'Qty has been update'], 200);
    }
    public function deletecartitem(Request $request)
    {
        if ($request->cart_id == "") {
            return response()->json(["status" => 0, "message" => "Cart Id is required"], 200);
        }
        $cart = Cart::where('id', $request->cart_id)->delete();
        $count = Cart::where('session_id', Session::getId())->count();
        session()->put('cart', $count);
        if ($cart) {
            return response()->json(['status' => 1, 'message' => 'Success', 'cartcnt' => $count], 200);
        } else {
            return response()->json(['status' => 0], 200);
        }
    }
    public function applypromocode(Request $request)
    {
        if ($request->promocode == "") {
            return response()->json(["status" => 0, "message" => trans('messages.promocode')], 200);
        }
        $promocode = Coupons::select('price', 'type', 'code')->where('code', $request->promocode)->first();
        session([
            'offer_amount' => $promocode->price,
            'offer_code' => $promocode->code,
            'offer_type' => $promocode->type,
        ]);
        if ($promocode->code == $request->promocode) {
            return response()->json(['status' => 1, 'message' => trans('messages.promocode_applied'), 'data' => $promocode], 200);
        } else {
            return response()->json(['status' => 0, 'message' => trans('messages.wrong_promocode')], 200);
        }
    }
    public function removepromocode(Request $request)
    {
        $remove = session()->forget(['offer_amount', 'offer_code', 'offer_type']);
        if (!$remove) {
            return response()->json(['status' => 1, 'message' => trans('messages.promocode_removed')], 200);
        } else {
            return response()->json(['status' => 0, 'message' => trans('messages.wrong')], 200);
        }
    }
    public function checkplan(Request $request)
    {
        $checkplan = Helper::checkplan($request->restaurant);
        return $checkplan;
    }
    
    public function whatsapporder(Request $request)
    {
        date_default_timezone_set(Helper::webinfo($request->restaurant)->timezone);
        //payment_type = COD : 1,RazorPay : 2, Stripe : 3, Flutterwave : 4 , Paystack : 5   
        if ($request->payment_type == "COD") {
            $payment_type = "COD";
        } else if ($request->payment_type == "RazorPay") {
            $payment_type = "RazorPay";

            $getrazorPay = Payment::select('environment', 'secret_key')->where('restaurant', $request->restaurant)->where("payment_name", "RazorPay")->first();

            $api = new Api($getrazorPay->public_key, $getrazorPay->secret_key);
            $razor_payment = $api->payment->fetch($input['razorpay_payment_id']);

            if(count($input)  && !empty($input['razorpay_payment_id'])) {
                try {
                    $razor_response = $api->payment->fetch($input['razorpay_payment_id'])->capture(array('amount'=>$payment['amount']));
                } catch (Exception $e) {
                    //return  $e->getMessage();
                    Session::put('error',$e->getMessage());
                    return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
                }
            }
        } else if($request->$payment_type == "Stripe") {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')],  500);
            
            $payment_type = "Stripe";

            $getstripe = Payment::select('environment', 'secret_key')->where('restaurant', $request->restaurant)->where('payment_name', 'Stripe')->first();

            $skey = $getstripe->secret_key;

            Stripe::setApiKey($skey);

            $customer = Customer::create(array(
                'email' => $request->customer_email,
                'source' => $request->stripeToken,
                'name' => $request->customer_name,
            ));

            $charge = Charge::create(array(
                'customer' => $customer->id,
                'amount' => $request->grand_total * 100,
                'currency' => 'usd',
                'description' => 'eCommerce',
            ));

            $payment_id = $charge['id'];

        } else {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        if ($request->order_type == "2") {
            $delivery_charge = "0.00";
            $address = "";
            $building = "";
            $landmark = "";
            $postal_code = "";
            $order_type = trans('labels.pickup');
        } else {
            $delivery_charge = $request->delivery_charge;
            $address = $request->address;
            $building = $request->building;
            $landmark = $request->landmark;
            $postal_code = $request->postal_code;
            $order_type = trans('labels.delivery');
        }
        if ($request->discount_amount == "NaN") {
            $discount_amount = 0;
        } else {
            $discount_amount = $request->discount_amount;
        }
        
        $order_number = substr(str_shuffle(str_repeat("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ", 10)), 0, 10);
        
        $order = new Order;
        $order->restaurant = $request->restaurant;
        $order->order_number = $order_number;
        $order->payment_type = $payment_type;
        $order->payment_id = @$payment_id;
        $order->sub_total = $request->sub_total;
        $order->tax = $request->tax;
        $order->grand_total = $request->grand_total;
        $order->status = '1';
        $order->address = $address;
        $order->delivery_time = $request->delivery_time;
        $order->delivery_date = $request->delivery_date;
        $order->delivery_area = $request->delivery_area;
        $order->delivery_charge = $delivery_charge;
        $order->discount_amount = $discount_amount;
        $order->couponcode = $request->couponcode;
        $order->order_type = $request->order_type;
        $order->building = $building;
        $order->landmark = $landmark;
        $order->pincode = $postal_code;
        $order->customer_name = $request->customer_name;
        $order->customer_email = $request->customer_email;
        $order->mobile = $request->customer_mobile;
        $order->order_notes = $request->notes;
        $order->save();
        $order_id = DB::getPdo()->lastInsertId();
        $data = Cart::where('session_id', Session::getId())
            ->get();
        foreach ($data as $value) {
            $OrderPro = new OrderDetails;
            $OrderPro->order_id = $order_id;
            $OrderPro->item_id = $value['item_id'];
            $OrderPro->item_name = $value['item_name'];
            $OrderPro->item_image = $value['item_image'];
            $OrderPro->extras_id = $value['extras_id'];
            $OrderPro->extras_name = $value['extras_name'];
            $OrderPro->extras_price = $value['extras_price'];
            if ($value['variants_id'] == "") {
                $OrderPro->price = $value['item_price'];
            } else {
                $OrderPro->price = $value['price'];
            }
            $OrderPro->variants_id = $value['variants_id'];
            $OrderPro->variants_name = $value['variants_name'];
            $OrderPro->variants_price = $value['variants_price'];
            $OrderPro->qty = $value['qty'];
            $OrderPro->save();
        }
        Cart::where('session_id', Session::getId())->delete();
        session()->forget(['offer_amount', 'offer_code', 'offer_type']);
        $count = Cart::where('session_id', Session::getId())->count();
        session()->put('cart', $count);
        $orderdata = Order::where('id', $order->id)->first();
        $itemdata = OrderDetails::where('order_id', $order->id)->get();
        $emaildata = User::select('id', 'name', 'email', 'mobile')->where('id', $request->restaurant)->first();
        Helper::create_order_invoice($emaildata, $orderdata, $itemdata);
        return response()->json(['status' => 1, 'message' => trans('messages.order_placed'), "order_number" => $order_number], 200);
    }

    public function whatsapporder_paypal(Request $request)
    {
        date_default_timezone_set(Helper::webinfo($request->restaurant)->timezone);

        $payment = Payment::where('restaurant', $request->restaurant)->where("payment_name", $request->payment_type)->first();

        if ($payment == null || $payment->public_key != $request->business) {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        $currency = Currency::where('name', $request->currency_code)->first();

        if ($currency == null || $request->no_shipping != 1 || $request->item_name != 'Order') {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        if ($request->order_type == "2") {
            $delivery_charge = "0.00";
            $address = "";
            $building = "";
            $landmark = "";
            $postal_code = "";
            $order_type = trans('labels.pickup');
        } else {
            $delivery_charge = $request->delivery_charge;
            $address = $request->address;
            $building = $request->building;
            $landmark = $request->landmark;
            $postal_code = $request->postal_code;
            $order_type = trans('labels.delivery');
        }
        if ($request->discount_amount == "NaN") {
            $discount_amount = 0;
        } else {
            $discount_amount = $request->discount_amount;
        }

        $date = date("Y-m-d h:i:sa");

        $payment_token = hash('ripemd128', rand().$date.$address.$building.rand());;

        $order = new UserTemp;
        $order->restaurant = $request->restaurant;
        $order->order_number = $payment_token;
        $order->payment_id = $payment->id;
        $order->sub_total = $request->sub_total;
        $order->tax = $request->tax;
        $order->grand_total = $request->grand_total;
        $order->status = '1';
        $order->address = $address;
        $order->delivery_time = $request->delivery_time;
        $order->delivery_date = $request->delivery_date;
        $order->delivery_area = $request->delivery_area;
        $order->delivery_charge = $delivery_charge;
        $order->discount_amount = $discount_amount;
        $order->couponcode = $request->couponcode;
        $order->order_type = $request->order_type;
        $order->building = $building;
        $order->landmark = $landmark;
        $order->pincode = $postal_code;
        $order->customer_name = $request->customer_name;
        $order->customer_email = $request->customer_email;
        $order->mobile = $request->customer_mobile;
        $order->order_notes = $request->notes;
        $order->timestamp = hash('snefru', rand().$order->order_number.rand().$date);
        $order->is_deleted = 2;
        $order->save();

        $token = base64_encode(hash('md5', $date).$order->timestamp.hash('adler32', $date.$address));

        $notify_url = $request->notify_url;
        $cancel_return = $request->cancel_return;
        $return_pay = $request->return_pay;

        $return_pay .= '/'.$token;
        $payment_id = $payment_token;

        $message = array('url' => $return_pay, 'id' => $payment_token, 'email' => $order->customer_email, 'name' => $order->customer_name, 'amount' => $order->grand_total);

        return response()->json(['status' => 1, 'message' => json_encode($message)], 200);
    }

    public function notify()
    {

    }

    public function success($token)
    {
        $token = base64_decode($token);

        $token = substr($token, 32, -8);
        $temp = UserTemp::where('timestamp', $token)->first();
 
        if ($temp == null) {
            return redirect(route('front.restaurants'))->with('error', trans('messages.payment_error'));
        }
        UserTemp::where('id', $temp->id)
            ->update([
                'is_deleted' => 1
            ]);

        $user_temp = UserTemp::where('id', $temp->id)->first();

        $order = new Order;
        $order->restaurant = $user_temp->restaurant;
        $order->order_number = $user_temp->order_number;
        $order->payment_type = "PayPal";
        $order->payment_id = @$user_temp->payment_token;
        $order->sub_total = $user_temp->sub_total;
        $order->tax = $user_temp->tax;
        $order->grand_total = $user_temp->grand_total;
        $order->status = '1';
        $order->address = $user_temp->address;
        $order->delivery_time = $user_temp->delivery_time;
        $order->delivery_date = $user_temp->delivery_date;
        $order->delivery_area = $user_temp->delivery_area;
        $order->delivery_charge = $user_temp->delivery_charge;
        $order->discount_amount = $user_temp->discount_amount;
        $order->couponcode = $user_temp->couponcode;
        $order->order_type = $user_temp->order_type;
        $order->building = $user_temp->building;
        $order->landmark = $user_temp->landmark;
        $order->pincode = $user_temp->postal_code;
        $order->customer_name = $user_temp->customer_name;
        $order->customer_email = $user_temp->customer_email;
        $order->mobile = $user_temp->mobile;
        $order->order_notes = $user_temp->order_notes;
        $order->save();
        $order_id = DB::getPdo()->lastInsertId();
        $data = Cart::where('session_id', Session::getId())
            ->get();
        foreach ($data as $value) {
            $OrderPro = new OrderDetails;
            $OrderPro->order_id = $order_id;
            $OrderPro->item_id = $value['item_id'];
            $OrderPro->item_name = $value['item_name'];
            $OrderPro->item_image = $value['item_image'];
            $OrderPro->extras_id = $value['extras_id'];
            $OrderPro->extras_name = $value['extras_name'];
            $OrderPro->extras_price = $value['extras_price'];
            if ($value['variants_id'] == "") {
                $OrderPro->price = $value['item_price'];
            } else {
                $OrderPro->price = $value['price'];
            }
            $OrderPro->variants_id = $value['variants_id'];
            $OrderPro->variants_name = $value['variants_name'];
            $OrderPro->variants_price = $value['variants_price'];
            $OrderPro->qty = $value['qty'];
            $OrderPro->save();
        }
        Cart::where('session_id', Session::getId())->delete();
        session()->forget(['offer_amount', 'offer_code', 'offer_type']);
        $count = Cart::where('session_id', Session::getId())->count();
        session()->put('cart', $count);
        $orderdata = Order::where('id', $order->id)->first();
        $itemdata = OrderDetails::where('order_id', $order->id)->get();
        $emaildata = User::select('id', 'name', 'email', 'mobile')->where('id', $user_temp->restaurant)->first();
        Helper::create_order_invoice($emaildata, $orderdata, $itemdata);

        $user = User::where('id', $user_temp->restaurant)->first();
        return redirect(URL::to($user->slug.'/success/'.$user_temp->order_number));
    }

    public function cancel()
    {

    }

    public function landing()
    {
        $settingdata = Settings::first();
        $plans = Plans::where('type', 1)->orderBy('id', 'DESC')->get();
        $users = User::where('users.type', '2')->orderBy('users.id', 'ASC')->get();

        return view('front.landing.index', compact('plans', 'settingdata', 'users'));
    }
    
    public function first()
    {
        return view('front.landing.layout.index');
    }

    public function terms(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $terms = Terms::select('terms_content')
            ->where('restaurant', @$getrestaurant->id)
            ->first();
        $settingdata = Settings::where('restaurant', $getrestaurant->id)->select('language')->first();
        session()->put('direction', $settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        return view('front.terms', compact('getrestaurant', 'terms'));
    }
    public function privacy(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $privacypolicy = Privacypolicy::select('privacypolicy_content')
            ->where('restaurant', @$getrestaurant->id)
            ->first();
        $settingdata = Settings::where('restaurant', $getrestaurant->id)->select('language')->first();
        session()->put('direction', $settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        return view('front.privacy', compact('getrestaurant', 'privacypolicy'));
    }
    public function book(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $settingdata = Settings::where('restaurant', $getrestaurant->id)->select('language')->first();
        session()->put('direction', $settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        return view('front.book', compact('getrestaurant'));
    }
    public function tablebook(Request $request)
    {
        $tble = new Tablebook;
        $tble->restaurant = $request->restaurant;
        $tble->type_of_event = $request->type_of_event;
        $tble->no_of_people = $request->no_of_people;
        $tble->date_of_event = $request->date_of_event;
        $tble->time_required = $request->time_required;
        $tble->fullname = $request->fullname;
        $tble->mobile = $request->mobile;
        $tble->email = $request->email;
        $tble->additional_requests = $request->additional_requests;
        $tble->save();
        return redirect()->back()->with('success', trans('labels.thanks'));
    }
    public function trackorder(Request $request)
    {
        $getrestaurant = Helper::getrestaurant($request->restaurant);
        $status = Order::select('order_number', DB::raw('DATE_FORMAT(created_at, "%d %M %Y") as date'), 'address', 'building', 'landmark', 'pincode', 'order_type', 'id', 'discount_amount', 'order_number', 'status', 'order_notes', 'tax', 'delivery_charge', 'couponcode', 'sub_total', 'grand_total')->where('order_number', $request->ordernumber)->first();
        $orderdata = Order::where('order_number', $request->ordernumber)->get();
        $orderdetails = OrderDetails::where('order_details.order_id', $status->id)->get();
        $summery = array(
            'id' => "$status->id",
            'tax' => "$status->tax",
            'discount_amount' => $status->discount_amount,
            'order_number' => $status->order_number,
            'created_at' => $status->date,
            'delivery_charge' => "$status->delivery_charge",
            'address' => $status->address,
            'building' => $status->building,
            'landmark' => $status->landmark,
            'pincode' => $status->pincode,
            'order_notes' => $status->order_notes,
            'status' => $status->status,
            'order_type' => $status->order_type,
            'couponcode' => $status->couponcode,
            'sub_total' => $status->sub_total,
            'grand_total' => $status->grand_total,
        );
        $settingdata = Settings::where('restaurant', $getrestaurant->id)->select('language')->first();
        session()->put('direction', $settingdata->language);
        if (@$settingdata->language == '1') {
            Session::put('language', 'en');
            App::setLocale('en');
        } else {
            Session::put('language', 'ar');
            App::setLocale('ar');
        }
        return view('front.track-order', compact('getrestaurant', 'orderdata', 'summery', 'orderdetails'));
    }
    public function ordersuccess(Request $request)
    {
        $orderdata = Order::where('order_number', $request->order_number)->first();
        $data = OrderDetails::where('order_id', $orderdata->id)->get();
        foreach ($data as $value) {
            if ($value['variants_id'] != "") {
                $item_p = $value['qty'] * $value['variants_price'];
                $variantsdata = '(' . $value['variants_name'] . ')';
            } else {
                $variantsdata = "";
                $item_p = $value['qty'] * $value['price'];
            }
            $extras_id = explode(",", $value['extras_id']);
            $extras_name = explode(",", $value['extras_name']);
            $extras_price = explode(",", $value['extras_price']);
            $item_message = Helper::webinfo($orderdata->restaurant)->item_message;
            $itemvar = ["{qty}", "{item_name}", "{variantsdata}", "{item_price}"];
            $newitemvar   = [$value['qty'], $value['item_name'], $variantsdata, Helper::currency_format($item_p, $orderdata->restaurant)];
            $pagee[] = str_replace($itemvar, $newitemvar, $item_message);
            if ($value['extras_id'] != "") {
                foreach ($extras_id as $key =>  $addons) {
                    $pagee[] .= "👉" . $extras_name[$key] . ':' . Helper::currency_format($extras_price[$key], $orderdata->restaurant) . '%0a';
                }
            }
        }
        $items = implode(",", $pagee);
        $itemlist = str_replace(',', '%0a', $items);

        if($orderdata->order_type == 1) {
            $order_type = trans('labels.delivery');
        } else {
            $order_type = trans('labels.pickup');
        }

        //payment_type = COD : 1,RazorPay : 2, Stripe : 3, Flutterwave : 4 , Paystack : 5

        if (!empty($request->order_number) && !empty($orderdata)) {
            $restaurantinfo = User::where('id', $orderdata->restaurant)->first();
            $getrestaurant = Helper::getrestaurant($restaurantinfo->slug);
            $whatsapp_message = Helper::webinfo($orderdata->restaurant)->whatsapp_message;
            $restaurantinfo = User::where('id', $orderdata->restaurant)->first();
            $var = ["{delivery_type}", "{order_no}", "{item_variable}", "{sub_total}", "{total_tax}", "{delivery_charge}", "{discount_amount}", "{grand_total}", "{notes}", "{customer_name}", "{customer_mobile}", "{address}", "{building}", "{landmark}", "{postal_code}", "{date}", "{time}", "{payment_type}", "{store_name}", "{track_order_url}", "{store_url}"];
            $newvar   = [$order_type, $orderdata->order_number, $itemlist, Helper::currency_format($orderdata->sub_total, $orderdata->restaurant), Helper::currency_format($orderdata->tax, $orderdata->restaurant), Helper::currency_format($orderdata->delivery_charge, $orderdata->restaurant), Helper::currency_format($orderdata->discount_amount, $orderdata->restaurant), Helper::currency_format($orderdata->grand_total, $orderdata->restaurant), $orderdata->order_notes, $orderdata->customer_name, $orderdata->mobile, $orderdata->address, $orderdata->building, $orderdata->landmark, $orderdata->postal_code, $orderdata->delivery_date, $orderdata->delivery_time, $orderdata->payment_type, $restaurantinfo->name, URL::to($restaurantinfo->slug . "/track-order/" . $orderdata->order_number), URL::to($restaurantinfo->slug)];
            $whmessage = str_replace($var, $newvar, str_replace("\n", "%0a", $whatsapp_message));
            return view('front.ordersuccess', compact('getrestaurant', 'orderdata', 'whmessage'));
        } else {
            abort(404);
        }
    }
}
