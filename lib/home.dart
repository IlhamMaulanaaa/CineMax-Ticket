import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(children: [
          Icon(
            Icons.movie,
            color: Colors.white,
          ),
          SizedBox(width: 20,),
          Text(
            "Cinemaxx",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 10,),
          Icon(Icons.menu, color: Colors.white)
        ]),
      ),
    );
  }
}
