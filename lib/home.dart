import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late PageController _pageController;
  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];

  List<Widget> indicators(imagesLength,currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8,initialPage: 1);
  }

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
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,

            child: PageView.builder(
                itemCount: 2,
                pageSnapping: true,
                itemBuilder: (context,pagePosition){
                  return Container(
                      margin: EdgeInsets.all(10),
                      child:Image.network(images[pagePosition],fit: BoxFit.cover,));
                }) ,
          )
        ]
      ),
    );
  }
}
