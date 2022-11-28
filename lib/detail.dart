import 'package:cinemax_hakatim/SeatPage.dart';
import 'package:cinemax_hakatim/home.dart';
import 'package:cinemax_hakatim/model/movies.dart';
import 'package:cinemax_hakatim/ui/chooseseat.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';


class detail extends StatefulWidget {
  final Movie movie;
  const detail({Key? key, required this.movie}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.movie.title,),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const Homepage();
                }),
              );
            },
          ),
        ),
        backgroundColor: Color(0XFF141414),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Transform.translate(
                //   offset: const Offset(0, -85),
                //   child: Container(
                //     child: Movie(
                //       tag: widget.movie.imageUrl,
                //     ),
                //   ),
                // ),
            Hero(
                tag: widget.movie.imageUrl,
                  child:     Transform.translate(
                    offset: const Offset(0, -85),
                    child: Image.asset(
                      widget.movie.imageUrl,
                    ),
                  )
              ),
                Row(children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 200,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Transform.translate(
                                        offset: const Offset(-20, -140),
                                        child: Text(
                                          widget.movie.title,
                                          style: TextStyle(
                                              color: Color(0xffFFD600),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 22),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Transform.translate(
                                        offset: const Offset(-60, -80),
                                        child: Text("DESKRIPSI",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16)),
                                      ),
                                      Transform.translate(
                                          offset: const Offset(22, -70),
                                          child: Text(widget.movie.description,
                                            style:
                                                TextStyle(color: Colors.white),
                                          ))
                                    ],
                                  )),
                            ])),
                  ),
                  Flexible(
                      flex: 1,
                      child: Container(
                        // decoration: BoxDecoration(
                        //           color: Colors.white,
                        //             borderRadius: BorderRadius.circular(radius)
                        // ),
                          child:Column(
                            children: [
                              // Transform.translate(
                              //   offset: const Offset(20, -220),
                              //   child: Image.asset(
                              //     "assets/image/spiderman.png",
                              //     height: 120,
                              //   ),
                              // ),
                              // Hero(
                              //     tag: widget.movie.imageUrl2,
                                 Transform.translate(
                                    offset: const Offset(0, -190),
                                    child: Image.asset(
                                      widget.movie.imageUrl2.toString(),
                                      height: 120,
                                    ),
                                  ),
                              Transform.translate(
                                    offset: const Offset(0, -190),
                                    child: Image.asset(
                                    "assets/image/jumlah.png",
                                      height: 120,
                                    ),
                                  ),
                              // ),
                              Transform.translate(
                                offset: const Offset(0, -80),
                                child: buildButtons(text: "purchased", onClicked: () => showModalBottomSheet(
                                  context: context,
                                  builder: (context) => buildSheet(),
                                ),
                                ),
                                // child: Padding(
                                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                //   child: Container(
                                //     height: 42,
                                //     child: ElevatedButton(
                                //       style: ElevatedButton.styleFrom(
                                //         backgroundColor: Colors.pink,
                                //         shape: RoundedRectangleBorder(
                                //           borderRadius: BorderRadius.circular(12),
                                //         ),
                                //       ),
                                //       onPressed: () {
                                //         Navigator.of(context).push(MaterialPageRoute(
                                //             builder: (context) => buildSheet()));
                                //       },
                                //       child: Center(
                                //         child: Text(
                                //           'purchased',
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontWeight: FontWeight.bold,
                                //             fontSize: 14,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ),
                            ],
                          ))),
                ]),
              ],
            ),
          ),
        ));
  }


  Widget buildButtons({
  required String text,
    required VoidCallback onClicked,
}) => ElevatedButton(
    style:  ElevatedButton.styleFrom(
      backgroundColor: Colors.pink,
      padding: EdgeInsets.symmetric(horizontal: 0,vertical:0)
    ),
    child:  Text(
      text,
      style:  TextStyle (fontSize: 12),
    ),
    onPressed:  onClicked,
  );

  Widget buildSheet() => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
    ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Transform.translate(offset: const Offset(-85, 40),
              child: Text(
                widget.movie.title,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Transform.translate(offset: const Offset(-150, 60),
              child: Icon(
                  Icons.person
              ),
            ),
            Transform.translate(offset: const Offset(-80, 40),
              child: Text(
                widget.movie.price,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
            ),
            Transform.translate(offset: const Offset(-150, 60),
              child: Icon(
                  Icons.airplane_ticket
              ),
            ),
            Transform.translate(offset: const Offset(-80, 40),
              child: Text(
                widget.movie.subtitle,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start
              ),
            ),
            Text("\n\n"),
            Transform.translate(
              offset: const Offset(100, -120),
              child: Image.asset(
                widget.movie.imageUrl2.toString(),
                height: 120,
              ),
            ),
            Text("\n\n"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ChooseSeat()));
                  },
                  child: Center(
                    child: Text(
                      'Buy Ticket',
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
            Text("\n\n"),
          ],
        ),
      )
  );
}
