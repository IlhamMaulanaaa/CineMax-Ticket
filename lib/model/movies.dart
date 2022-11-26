import 'package:flutter/material.dart';

class Movie {
  String title;
  String subtitle;
  String price;
  String description;
  String imageUrl;
  String imageUrl2;

  Movie(this.title, this.subtitle, this.price,  this.description, this.imageUrl, this.imageUrl2 );
  static List<Movie> generateMovie() {
    return [
      Movie(
          'SPIDERMAN-NWH',
          'spiderman',
          'Rp. 50.000.00',
          'For the first time in the history of the big screen Spider-Man, the true identity of this friendly hero is exposed, thus making his responsibilities as a super power clash with his normal life, and putting everyone closest to him in the most threatened position.',
          'assets/image/spiderman.png',
          'assets/image/spiderman.png'
        ),
      Movie(
          'The Power Of the Dog',
          'The Power Of the Dog',
          'Rp. 50.000.00',
          'The Power of the Dog adalah sebuah film drama kerjasama produksi internasional tahun 2021 yang ditulis dan disutradarai oleh Jane Campion, berdasarkan pada novel bernama sama karya Thomas Savage',
          'assets/image/002.png',
          'assets/image/002.png',
          ),
      Movie(
          'GOT',
          'GOT',
          'Rp. 50.000.00',
          'Game of Thrones adalah serial televisi drama fantasi Amerika Serikat yang diciptakan oleh David Benioff dan D. B. Weiss untuk saluran HBO. Serial ini merupakan adaptasi dari A Song of Ice and Fire, seri novel fantasi karangan George R. R. Martin, novel pertama adalah A Game of Thrones.',
          'assets/image/003.png',
          'assets/image/003.png',
          ),
      Movie(
          'BelFast',
          'BelFast',
          'Rp. 50.000.00',
          'Belfast Halaman Pembicaraan Baca Sunting Sunting sumber Lihat riwayat Dari Wikipedia bahasa Indonesia, ensiklopedia bebas Belfast[1] adalah ibu kota sekaligus kota terbesar di Irlandia Utara. Berdasarkan populasi, Belfast adalah kota terbesar ke-14 di Inggris[2] dan ke-2 terbesar di pulau Irlandia. Belfast adalah kedudukan yang dilimpahkan pemerintah dan legislatif Majelis Irlandia Utara.[3] Kota Belfast mempunyai populasi sekitar 267.500 jiwa[4] dan terletak di jantung kawasan perkotaan Belfast, yang memiliki penduduk 579.276 jiwa. Zona Perkotaan Besar, seperti yang didefinisikan oleh Uni Eropa, memiliki jumlah penduduk 641.638 jiwa. Belfast diberikan status kota pada tahun 1888.',
          'assets/image/004.png',
          'assets/image/004.png',
          ),
    ];
  }
}
