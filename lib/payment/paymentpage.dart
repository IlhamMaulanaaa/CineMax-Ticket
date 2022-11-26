import 'package:cinemax_hakatim/home.dart';
import 'package:cinemax_hakatim/model/movies.dart';
import 'package:cinemax_hakatim/ui/chooseseat.dart';
import 'package:cinemax_hakatim/payment/paymentsuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int id = 1;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(
              offset: const Offset(-120, 40),
              child: Image.asset(
                ("assets/image/spiderman.png"),
                height: 120,
              ),
            ),
            Transform.translate(
              offset: const Offset(35, -70),
              child: Text(
                "SpiderMan - No Way Home",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            Transform.translate(
              offset: const Offset(-25, -70),
              child: Text(
                "Rp. 50.000",
                style: TextStyle(color: Colors.orangeAccent, fontSize: 17),
              ),
            ),
            Container(
              margin: new EdgeInsets.only(top: 60),
              height: 350,
              width: 315,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/bgpayment.png"))),
              child: Transform.translate(
                offset: const Offset(10, -130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          id = 1;
                        });
                      },
                    ),
                    Text("Ovo"),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          id = 2;
                        });
                      },
                    ),
                    Text("Gopay"),
                    Radio(
                      value: 3,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          id = 3;
                        });
                      },
                    ),
                    Text("Dana"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PaymentSuccess()));
                    },
                    child: Center(
                      child: Text(
                        'Purchased',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
