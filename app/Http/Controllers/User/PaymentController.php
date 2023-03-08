<?php

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PaymentController extends Controller {
    public function pagar(Request $request) {
      // Obtener init_point de la solicitud POST
      $init_point = $request->input('init_point');
  
      // Redirigir al usuario a la página de pago de MercadoPago
      return redirect($init_point);
    }
  }
