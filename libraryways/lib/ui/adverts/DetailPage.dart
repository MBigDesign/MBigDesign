import 'package:flutter/material.dart';
import 'package:mbigdesign/adverts/Advert.dart';
import 'package:mbigdesign/ui/home/AdvertCard.dart';
import 'package:mbigdesign/ui/FontStyles.dart';

class DetailPage extends StatelessWidget {
  final Advert advert;

  DetailPage(this.advert);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Container(
          constraints: new BoxConstraints.expand(),
          child: new Stack(
            children: <Widget>[
              _getContent(),
              _getToolbar(context),
            ],
          )
      ),
    );
  }

  Widget _getToolbar(BuildContext context){
    return new Container(
      margin: new EdgeInsets.only(
        top: MediaQuery
            .of(context)
            .padding
            .top
      ),
      child: new BackButton(color: Colors.black,)
    );
  }

  Widget _getContent(){
    final _overviewTitle = "Overview".toUpperCase();
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 32.0),
      children: <Widget>[
        new AdvertCard(
          advert,
          horizontal: false,
        ),
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_overviewTitle, style: blackHeaderTextStyle),
              new Separator(),
              new Text(advert.description, style: contentTextStyle),
            ],
          ),
        ),
      ],
    );
  }

}
