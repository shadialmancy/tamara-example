import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tamara_sdk/tamara_sdk.dart';


void main() {
  runApp(const MyApp());
}

Random rand = Random();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context)=> MyPaymentPage()
      },
      
    );
  }
}

class MyPaymentPage extends StatefulWidget {
  const MyPaymentPage({
    Key? key,
  }) : super(key: key);

  @override
  _MyPaymentPageState createState() => _MyPaymentPageState();
}

class _MyPaymentPageState extends State<MyPaymentPage> {
  // Initialize Tamara SDK with your credentials
  // final tamaraPayment = TamaraSdk.initSdk(
  //     "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhY2NvdW50SWQiOiJmMTU4MThiYy01NTVhLTQ2MjctYWZkZi1lMzYwY2MzNGYzZjUiLCJ0eXBlIjoibWVyY2hhbnQiLCJzYWx0IjoiMTE2NDJkZDIzNTU5MGI4N2Y2MmEyMzE5OGJiZmYyNTAiLCJpYXQiOjE2NTkyNjczNTUsImlzcyI6IlRhbWFyYSBQUCJ9.IcytLOZdFQfs6YTBvGpHF6EuYhmCcJmDFufuxa753RiGS604BVxIMm_asxGymAJEqp5PUKxVZ0QZR35szmJIJlkYTpMhClYDBePfQ7UX1jvV0oSBMmnvSK6kw8uIzwb1vSqIEV5iW8fFhuhcSfpuCDE2AP1E83iGjXDSKWvKqVaRHSOFO-hz1dIuXpAEsFj3KyXzawX3s3vvznSklX6-h4Usz4_5cD5EIiRW39BP11fD2QKz-fI7rE3v2ssRLb6G8ouX8ligJoQ1YJUwjqy49AqN0bTCI7dNzqHWmTze1kBrKE0AWeOiFaCEyeTmPFTRU1o8l0DVtVmv8SboN3oxXg",
  //     'https://api.tamara.co',
  //     '',
  //     '275bc90b-e4c3-4a68-a39c-ea08582d1805',
  //     'c3496ea5-54dd-4ae0-a796-be07e6bdba15',
  //     true);

  // Future<void> initiatePayment() async {
    
  //   await TamaraSdk.setCustomerInfo(
  //       'firstName', 'lastName', '0505832842', 'email@gmail.com', true);
  //   await TamaraSdk.setPaymentType('PAY_BY_INSTALMENTS');
  //   await TamaraSdk.addItem('name', '234523453', 'ew', 'type', 12, 1, 0, 1);
  //   await TamaraSdk.setShippingAddress('firstName', 'lastName', '0505832842',
  //       'addressLine1', 'addressLine2', 'Saudi Arabia', 'Dammam', 'Dammam');
  //   await TamaraSdk.setBillingAddress('firstName', 'lastName', '0505832842',
  //       'addressLine1', 'addressLine2', 'Saudi Arabia', 'Dammam', 'Dammam');
  //   await TamaraSdk.setShippingAmount(11);
  //   await TamaraSdk.setInstalments(3);
  //   await TamaraSdk.setLocale('en-us');
  //   final result = await TamaraSdk.paymentOrder();
  //   print(result);
  // }

  @override
 Widget build(BuildContext context) {
    // ... your home page content
    return Scaffold(
      body: TamaraCheckout(
                  '',
                  'http://example.com/#/success', // Empty successUrl
                  'http://example.com/#/fail', // Empty failedUrl
                  'http://example.com/#/cancel', // Empty canceledUrl,
                  onPaymentSuccess: () {
                    Navigator.pushNamed(context, '/');
                  },
                  onPaymentFailed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  onPaymentCanceled: () {
                    Navigator.pushNamed(context, '/');
                  },
                )
    );
  }
}
