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

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text(
            "Kudus",
            style: TextStyle(color: Colors.white),
          ),
          value: "Kudus"),
      const DropdownMenuItem(
          child: Text(
            "Semarang",
            style: TextStyle(color: Colors.white),
          ),
          value: "Semarang"),
      DropdownMenuItem(
          child: Text(
            "Jepara",
            style: TextStyle(color: Colors.white),
          ),
          value: "Jepara"),
      DropdownMenuItem(
          child: Text(
            "Demak",
            style: TextStyle(color: Colors.white),
          ),
          value: "Demak"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = "Kudus";
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        title: Text("Back To menu"),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Container(
        height: 800,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image/bgnew.png"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: new EdgeInsets.only(top: 60),
              height: 550,
              width: 360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/bgpayment.png"))),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 100, top: 30, left: 28),
                    child: Text(
                      "Mohon menyelesaikan pemabayaran sebelum waktu habis",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-120, 20),
                    child: Image.asset(
                      ("assets/image/spiderman.png"),
                      height: 110,
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(35, -94),
                    child: Text(
                      "SpiderMan - No Way Home",
                      style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-25, -84),
                    child: Text(
                      "11.15 - 13.10",
                      style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w500),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-22, -40),
                    child: Text(
                      "Rp. 50.000",
                      style:
                          TextStyle(color: Colors.orangeAccent, fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                      ),
                        margin: EdgeInsets.only(top: 10),
                        child: DropdownButton(
                            hint: Text(
                              "Select City",
                              style: TextStyle(color: Colors.black),
                            ),
                            dropdownColor: Colors.black87,
                            value: selectedValue,
                            isExpanded: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: dropdownItems)),
                  ),
                  Transform.translate(
                    offset: const Offset(-46, 42),
                    child : Text("Spider-Man No way home : ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)
                  ),
                  Transform.translate(
                    offset: const Offset(120, 25),
                    child : Text("50.000", style: TextStyle(fontWeight: FontWeight.w600))
                  ),
                  Transform.translate(
                    offset: const Offset(60, 194),
                    child : Text("Total : ", style: TextStyle(fontWeight: FontWeight.w600))
                  ),
                  Transform.translate(
                    offset: const Offset(120, 178),
                    child : Text("50.000",style: TextStyle(fontWeight: FontWeight.w600))
                  ),
                  Transform.translate(
                    offset: const Offset(-70, 150),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        child: Container(
                          height: 40,
                          width: 180,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pink,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2),
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
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
