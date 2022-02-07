import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Bu Gün Ne Yesem ?",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  const YemekSayfasi({Key? key}) : super(key: key);

  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;
  List<String> yemekAdlari=['Karnıyarık','Mantı','Kuru Fasulye','İçli Köfte','Izgara Balık'];
  List<String> tatliAdlari=['Kadayıf','Baklava','Sütlaç','Kazandibi','Dondurma'];
  List<String> corbaAdlari=['Mercimek Çorbası','Tarhana Çorbası','TavukSuyu Çorbası','Düğün Çorbası','Yoğurt Çorbası'];

  get floatingActionButton => null;
  void randomFonksiyon() {
    setState(() {
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/corba_$corbaNo.jpg"),
            ),
          ),
          Text(corbaAdlari[corbaNo-1]),
          SizedBox(width:200,child: Divider()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/yemek_$yemekNo.jpg"),
            ),
          ),
          Text(yemekAdlari[yemekNo-1]),
          SizedBox(width:200,child: Divider()),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/tatli_$tatliNo.jpg"),
            ),
          ),
          Text(tatliAdlari[tatliNo-1]),
          SizedBox(width:200,child: Divider()),
          FloatingActionButton(onPressed: randomFonksiyon,backgroundColor: Colors.yellow,),
        ],
      ),
    );
  }
}
