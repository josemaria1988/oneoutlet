<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\Plans;
use App\Models\Payment;
use App\Models\Settings;
use App\Models\Currency;
use App\Models\AdminTemp;
use App\Models\Transaction;
use App\Models\SystemAddons;
use Helper;

class UserPayPalData{
    public $status; 
    public $url; 
    public $user_id;
    public $name;
}

class UserController extends Controller
{

    public function index()
    {
        $paypal = Payment::where('restaurant', null)->where('payment_name', 'PayPal')->first();
        if ($paypal->environment == 0)
            $paypal->ifsc = "https://www.PayPal.com/cgi-bin/webscr";
        else
            $paypal->ifsc = "https://www.sandbox.PayPal.com/cgi-bin/webscr";

        $user = new UserPayPalData;

        if (Auth::user()->type != 3) {
            $paypal->ifsc = '#';
            $user->status = 1;
        }
        else {
            $user->status = 2;
            $user->user_id = $paypal->public_key;
            $user->name = $paypal->secret_key;
        }

        $user->url = $paypal->ifsc;

        return view('user.landing.index', compact('user'));
    }

    public function reset(Request $request)
    {
        if ($request->amount != $request->a3)
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);

        $plan = Plans::where('is_deleted', 2)->where('type', 2)->where('price', $request->amount)->first();

        if ($plan == null || $plan->name != $request->plan)
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);

        $payment = Payment::where('restaurant', null)->where('payment_name', 'PayPal')->where('public_key', $request->business)->first();

        if ($payment == null) {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        $user = User::where('name', $request->payer_name)->where('email', $request->payer_email)->first();

        if ($user == null || $request->no_shopping != 1) {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        $currency = Currency::where('name', $request->currency_code)->first();

        if ($currency == null) {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        if ($request->cmd != '_xclick-subscriptions' || $request->t3 != 'M' || $request->p3 != 1 || $request->src != 1) {
            return response()->json(['status' => 1, 'message' => trans('messages.failed')], 500);
        }

        $payment_id = 0;
        $date = date("Y-m-d h:i:sa");

        $temp = new AdminTemp;
        $temp->payment_id = hash('sha1', rand().$date.$request->email.rand());
        $temp->business = $request->business;
        $temp->payer_id = $user->id;
        $temp->amount = $request->amount;
        $temp->currency_id = $currency->id;
        $temp->plan_id = $plan->id;
        $temp->timestamp = hash('ripemd320', rand().$temp->amount.rand().$temp->payment_id);
        $temp->is_deleted = 2;
        $temp->save();

        $token = base64_encode(hash('crc32', $date).$temp->timestamp.hash('md5', $date.$temp->amount));

        $notify_url = $request->notify_url;
        $cancel_return = $request->cancel_return;
        $return_pay = $request->return_pay;

        $return_pay .= '/'.$token;
        $payment_id = $temp->payment_id;

        $message = array('url' => $return_pay, 'id' => $payment_id);

        return response()->json(['status' => 1, 'message' => json_encode($message)], 200);
    }

    public function notify() {

    }

    public function success($token) {

        $token = base64_decode($token);

        $token = substr($token, 8, -32);

        $temp = AdminTemp::where('timestamp', $token)->where('is_deleted', 2)->first();

        if ($temp == null) {
            return redirect(route('user.landing.index'))->with('error', trans('messages.payment_error'));
        }

        AdminTemp::where('id', $temp->id)
            ->update([
                'is_deleted' => 1
            ]);

        $plan = Plans::where('type', 2)->where('id', $temp->plan_id)->first();

        $transaction = new Transaction;

        $date = date("Y-m-d h:i:sa");

        $transaction->restaurant = Auth::user()->id;
        $transaction->plan = $plan->name;
        $transaction->amount = $plan->price;
        $transaction->payment_type = 'PayPal';
        $transaction->payment_id = @$temp->payment_id;
        $transaction->date = $date;
        $transaction->status = 2;
        $transaction->plan_period = $plan->plan_period;
        $transaction->save();

        User::where('id', Auth::user()->id)
            ->update([
                'app_payment_id' => @$temp->payment_id,
                'plan_app' => $plan->name,
                'is_approved' => 2,
                'app_purchase_date' => $date
            ]);

        $restaurant = Auth::user()->id;

            $days = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday" ];

            foreach ($days as $day) {

                $timedata = new Timing;
                $timedata->restaurant =$restaurant;
                $timedata->day =$day;
                $timedata->open_time ='12:00am';
                $timedata->close_time ='11:59pm';
                $timedata->is_always_close ='2';
                $timedata->save();
            }

            $check = SystemAddons::where('unique_identifier', 'payment')->first();

            $paymentlist = Payment::select('payment_name')->where('restaurant', null)->where('account_number', null)->get();

            foreach ($paymentlist as $payment) {
                $gateway = new Payment;
                $gateway->restaurant = $restaurant;
                $gateway->payment_name = $payment->payment_name;
                $gateway->public_key = NULL;
                $gateway->secret_key = NULL;
                $gateway->encryption_key = NULL;
                $gateway->environment = '1';
                $gateway->status = '1';
                $gateway->_id = hash('sha512', $restaurant.$user->email.rand());
                $gateway->save();
            }

            $data = new Settings;
            $data->restaurant = $restaurant;
            $data->currency = $rec->currency;
            $data->currency_position = $rec->currency_position;
            $data->timezone = $rec->timezone;
            $data->address = "Your address";
            $data->contact = "Your contact";
            $data->email = "youremail@gmail.com";
            $data->description = "Your description";
            $data->copyright = $rec->copyright;
            $data->website_title = "Your restaurant name";
            $data->meta_title = "Your restaurant name";
            $data->meta_description = "Description";
            $data->facebook_link = "Your facebook page link";
            $data->linkedin_link = "Your linkedin page link";
            $data->instagram_link = "Your instagram page link";
            $data->twitter_link = "Your twitter page link";
            $data->delivery_type = "both";
            $data->item_message = "🔵 {qty} X {item_name} {variantsdata} - {item_price}";
            $data->whatsapp_message = "Hi, 
I would like to place an order 👇
*{delivery_type}* Order No: {order_no}
---------------------------
{item_variable}
---------------------------
👉Subtotal : {sub_total}
👉Tax : {total_tax}
👉Delivery charge : {delivery_charge}
👉Discount : - {discount_amount}
---------------------------
📃 Total : {grand_total}
---------------------------
📄 Comment : {notes}

✅ Customer Info

Customer name : {customer_name}
Customer phone : {customer_mobile}

📍 Delivery Details

Address : {address}, {building}, {landmark}, {postal_code}

---------------------------
Date : {date}
Time : {time}
---------------------------
💳 Payment type :
{payment_type}

{store_name} will confirm your order upon receiving the message.

Track your order 👇
{track_order_url}

Click here for next order 👇
{store_url}";

            $data->save();

        AdminTemp::where('is_deleted', 2)->whereDate('created_at', '<=', now()->subDays(2))
            ->update([
                'is_deleted' => 1,
            ]);

        return redirect(route('user.landing.index'))->with('success', trans('messages.success'));
    }
    
    public function logout() {
        Auth::logout();
        session()->flush();
        return redirect()->route('home');
    }

    public function new_password(Request $request)
    {        
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
        ],  [
            'email.required' => trans('messages.email_required'),
            'email.email' => trans('messages.valid_email'),
        ]);
        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        } else {
            $checkadmin = User::where('email', $request->email)->where('type', 2)->first();
            if (!empty($checkadmin)) {
                $password = substr(str_shuffle('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'), 0, 8);
                $pass = Helper::send_pass($checkadmin->email, $checkadmin->name, $password, $checkadmin->id);
                if ($pass == 1) {
                    $checkadmin->password = Hash::make($password);
                    $checkadmin->save();
                    return redirect('admin')->with('success', trans('messages.password_sent'));
                } else {
                    return redirect()->back()->with('error', trans('messages.email_error'));
                }
            } else {
                return redirect()->back()->with('error', trans('messages.invalid_email'));
            }
        }
    }
}
