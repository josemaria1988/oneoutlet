const express = require('express');
const bodyParser = require('body-parser');
const mercadopago = require('mercadopago');
const axios = require('axios');
const morgan = require('morgan');

const app = express();

//CREDENCIALES MERCADO PAGO
mercadopago.configure({
  access_token: 'TEST-273117170665379-030621-c6f4e7c013da6e8f7b7d7ff93b964a0e-78923596',
})

//ANALISIS CUERPO SOLICITUDES HTTP
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(morgan('combined'));

//RUTAS API
app.post('/pagar', async (req, res) => {
  // INFO PAGO DESDE CUERPO DE SOLICITUD
  const { monto, descripcion, emailComprador, tipoUsuario } = req.body;

  let preference;

  if (tipoUsuario === 'plus') {
    // Objeto de preferencia de pago en Mercado Pago para el Plan Plus
    preference = {
      items: [{
        title: 'Plan Plus',
        quantity: 1,
        currency_id: 'BRL',
        unit_price: 89.00
      }],
      payer: {
        email: emailComprador
      },
      payment_methods: {
        excluded_payment_methods: [{ id: 'amex' }],
        excluded_payment_types: [{ id: 'atm' }],
        installments: 1
      },
      subscription_url: 'https://www.oneoutlet.site/confirmar-suscripcion'
    };
  } else if (tipoUsuario === 'premium') {
    // Objeto de preferencia de pago en Mercado Pago para el Plan Premium
    preference = {
      items: [{
        title: 'Plan Premium',
        quantity: 1,
        currency_id: 'BRL',
        unit_price: 130.00
      }],
      payer: {
        email: emailComprador
      },
      payment_methods: {
        excluded_payment_methods: [{ id: 'amex' }],
        excluded_payment_types: [{ id: 'atm' }],
        installments: 1
      },
      subscription_url: 'https://www.oneoutlet.site/confirmar-suscripcion'
    };
  }

  // Crear preferencia de pago en Mercado Pago
  console.log(preference.items[0].unit_price);
  try {
    const respuesta = await mercadopago.preferences.create(preference);
    // Enviar init_point a Laravel
    axios.post('http://localhost/user/payment/create_preference', { init_point: respuesta.body.init_point })
      .then(response => {
        console.log(response.data);
        res.send(response.data);
      })
      .catch(error => {
        console.error(error);
        res.status(500).send('Error al procesar el pago');
      });
  } catch (error) {
    console.error(error);
    res.status(500).send('Error al procesar el pago');
  }
});

// Iniciar servidor
app.listen(3000, () => {
  console.log('Servidor iniciado en el puerto 3000');
});