import 'package:flutter/material.dart';

class Movie {
  String title;
  String subtitle;
  String price;
  String imageURL;
  List<String> detailUrl;

  Movie(this.title, this.subtitle, this.price, this.imageURL, this.detailUrl);
  static List<Movie> generateMovie() {
    return [
      Movie(
          'Nasi Tumpeng',
          'Food',
          'Rp. 375.000.00/pcs',
          'assets/image/backgroundfilm.png',
          ['assets/image/backgroundfilm.png', 'assets/image/backgroundfilm.png']),
      Movie(
          'Red Velvet Dessert',
          'Dessert',
          'Rp. 23.000.00/pcs',
          'assets/image/backgroundfilm.png',
          ['assets/image/backgroundfilm.png', 'assets/image/backgroundfilm.png']),
      Movie(
          'Juice Buah',
          'Drink',
          'Rp. 11.500.00/pcs',
          'assets/image/backgroundfilm.png',
          ['assets/image/backgroundfilm.png', 'assets/image/backgroundfilm.png']),
      Movie(
          'Coca Cola',
          'Drink',
          'Rp. 9.000.00/pcs',
          'assets/image/backgroundfilm.png',
          ['assets/image/backgroundfilm.png', 'assets/image/backgroundfilm.png']),

    ];
  }
}
