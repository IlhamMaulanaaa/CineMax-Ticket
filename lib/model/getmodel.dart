import 'package:cinemax_hakatim/model/model.dart';
import 'package:flutter/material.dart';

class GetMovie extends StatelessWidget {
  final Movie movie;
  GetMovie(this.movie);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => DetailPage1(movie)));
        },
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            height: 160,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(movie.imageURL), fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
