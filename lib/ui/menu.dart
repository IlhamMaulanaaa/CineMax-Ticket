import 'dart:async';
import 'package:cinemax_hakatim/ui/chooseseat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  ScrollController scrollController = ScrollController();
  List listFeature = [
    "Eye Animation",
    "Choose Seat",
    "Snake",
    "Pokemon",
    "Piano",
    "Zelda",
    "HarvestMoon Walk",
    "Animation Walk",
    "List Checked",
    "Hide Post",
    "IG Message",
    "Pancake Sort",
    "Whatsapp",
    "Gojek Slide Panel",
    "Tokopedia",
    "Youtube",
    "Custom Navbar",
    "Select Varian Tokopedia",
    "Tiktok Like",
    "Facebook",
    "Dynamic Floating",
    "Instagram Topic"
  ];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    Timer(Duration(milliseconds: 200), () {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              textInputAction: TextInputAction.search,
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search Name",
              ),
              onEditingComplete: () {
                setState(() {});
              },
              onChanged: (value) {
                setState(() {});
              },
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                controller: scrollController,
                // reverse: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: listFeature
                    .where((element) => element
                    .toString()
                    .toLowerCase()
                    .contains(searchController.text.toLowerCase()))
                    .length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    onPressed: () {
                      movePage(index);
                    },
                    child: Text(
                      listFeature
                          .where((element) => element
                          .toString()
                          .toLowerCase()
                          .contains(searchController.text.toLowerCase()))
                          .elementAt(index),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  movePage(param) {
    Widget? className;
    switch (param) {
      case 1:
        className = ChooseSeat();
        break;
      default:
      // do something else
        break;
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => className!),
    ).then((value) => setState(() {}));
  }
}