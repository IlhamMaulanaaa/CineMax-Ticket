import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF141414),
      appBar: AppBar(
        title: Text("notification", style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0XFF141414),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("no notification yet", style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),)
          ],
        ),
      ),
    );
  }
}
