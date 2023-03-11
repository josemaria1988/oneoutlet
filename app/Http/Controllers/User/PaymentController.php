<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class PaymentsController extends Controller
{
    public function purchase_plan(Request $request)
    {
        $plan = $request->input('plan');

        $response = Http::post('http://localhost:3000/pagar', [
            'monto' => $this->get_plan_price($plan),
            'descripcion' => 'Pago de suscripción OneOutlet',
            'emailComprador' => $request->user()->email,
        ]);

        $preference_id = $response->body();

        return view('user.checkout', [
            'preference_id' => $preference_id,
        ]);
    }

    private function get_plan_price($plan)
    {
        switch ($plan) {
            case 'plus':
                return 89.00;
            case 'premium':
                return 130.00;
            case 'free':
            default:
                return 0;
        }
    }
}