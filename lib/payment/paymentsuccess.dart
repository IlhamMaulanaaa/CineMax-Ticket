import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        height: 700,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/bgnew.png"))),
        child: Transform.translate(
          offset: const Offset(-10, -110),
          child: Image.asset(
            ("assets/image/checksuccess.png"),
            height: 120,
          ),
        ),
      ),
    );
  }
}
