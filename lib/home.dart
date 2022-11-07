import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemax_hakatim/model/getmodel.dart';
import 'package:cinemax_hakatim/model/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg",
    "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final movielist = Movie.generateMovie();

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(
          child: Text(
            "Kudus",
            style: TextStyle(color: Colors.white),
          ),
          value: "Kudus"),
      DropdownMenuItem(
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
      backgroundColor: Colors.black87,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black87,
        title: Row(children: [
          Icon(
            Icons.movie,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Cinemaxx",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu, color: Colors.white)
        ]),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: DropdownButton(
                        hint: Text(
                          "Select City",
                          style: TextStyle(color: Colors.white),
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
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [
                    SizedBox(
                      height: 160,
                      width: MediaQuery.of(context).size.width,
                      child: CarouselSlider(
                        options: CarouselOptions(
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            }),
                        items: images
                            .map((e) => ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.network(
                                        e,
                                        fit: BoxFit.cover,
                                      )
                                    ],
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => _controller.animateToPage(entry.key),
                          child: Container(
                            width: 9.0,
                            height: 9.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 9.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.redAccent)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Container(
                      //   height: 200,
                      //   child: ListView(
                      //     scrollDirection: Axis.horizontal,
                      //     children: [
                      //       InkWell(
                      //         child: Container(
                      //           width: 200,
                      //           decoration: BoxDecoration(color: Colors.white),
                      //         ),
                      //       ),
                      //       InkWell(
                      //         child: Container(
                      //           width: 200,
                      //           decoration: BoxDecoration(color: Colors.grey),
                      //         ),
                      //       ),
                      //       InkWell(
                      //         child: Container(
                      //           width: 200,
                      //           decoration: BoxDecoration(color: Colors.grey),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      Container(
                        height: 160,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              GetMovie(movielist[index]),
                          separatorBuilder: (_, index) => SizedBox(
                            width: 10,
                          ),
                          itemCount: movielist.length,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Coming Soon",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/backgroundfilm.png"),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/backgroundfilm.png",),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/backgroundfilm.png"),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/backgroundfilm.png",),fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
