import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinemax_hakatim/model/getmodel.dart';
import 'package:cinemax_hakatim/model/movies.dart';
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
    "assets/image/banner.png",
    "assets/image/banner-1.png",
    "assets/image/banner-2.png",
    "assets/image/banner-3.png",
    "assets/image/banner-4.png",
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
      backgroundColor: const Color(0XFF282828),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFF282828),
        title: Row(children: const [
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
                      height: 140,
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
                            .map((item) => Container(
                                  child: Container(
                                    margin: EdgeInsets.all(0.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        child: Stack(
                                          children: <Widget>[
                                            Image.asset(item,
                                                fit: BoxFit.cover,
                                                width: 400.0),
                                            Positioned(
                                              bottom: 0.0,
                                              left: 0.0,
                                              right: 0.0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color.fromARGB(
                                                          200, 0, 0, 0),
                                                      Color.fromARGB(0, 0, 0, 0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.topCenter,
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10.0,
                                                    horizontal: 20.0),
                                              ),
                                            ),
                                          ],
                                        )),
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
                        children: const [
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
                      Container(
                        height: 160,
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              GetMovie(movielist[index]),
                          separatorBuilder: (_, index) => const SizedBox(
                            width: 10,
                          ),
                          itemCount: movielist.length,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "Coming Soon",
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
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/Rectangle 318.png"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Card(
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/image/Rectangle 317.png",
                                                ),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        child: Container(
                                          height: 160,
                                          width: 130,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/image/Rectangle 316.png"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
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
                                                  "assets/image/Rectangle 315.png",
                                                ),
                                                fit: BoxFit.cover),
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
