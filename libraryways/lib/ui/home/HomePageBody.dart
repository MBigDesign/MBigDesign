import 'package:flutter/material.dart';
import 'package:mbigdesign/ui/home/AdvertCard.dart';
import 'package:mbigdesign/adverts/Advert.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
        child: new ListView.builder(
          itemBuilder: (context, index) => new AdvertCard(adverts[index]),
          itemCount: adverts.length,
          padding: new EdgeInsets.symmetric(vertical: 16.0),
    ));
  }
}
