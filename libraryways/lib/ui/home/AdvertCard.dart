import 'package:flutter/material.dart';
import 'package:mbigdesign/adverts/Advert.dart';
import 'package:mbigdesign/ui/FontStyles.dart';
import 'package:mbigdesign/ui/adverts/DetailPage.dart';

class AdvertCard extends StatelessWidget {
  final Advert advert;
  final bool horizontal;
  final double adCardHeight = 92.0;
  final double adCardPadding = 16.0;

  AdvertCard(this.advert, {this.horizontal = true});

  AdvertCard.vertical(this.advert) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final adThumbnail = new Container(
      margin: new EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child: new Image(
        image: new AssetImage(advert.image),
        height: adCardHeight,
        width: adCardHeight,
      ),
    );

    final adCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(
          horizontal ? 50.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          new Text(advert.bookName, style: headerTextStyle),
          new Text(advert.location, style: subHeaderTextStyle),
          new Separator(),
          new Expanded(child: new Container()),
          new Expanded(
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new Row(children: <Widget>[
                    new Image.asset('assets/img/icons/ic_distance.png',
                        height: 9.0),
                    new Container(width: 8.0),
                    new Text(advert.distance, style: regularTextStyle),
                  ]),
                ),
                new Text(advert.price, style: headerTextStyle)
              ],
            ),
          ),
        ],
      ),
    );

    final adCard = new Container(
      child: adCardContent,
      height: horizontal ? 124.0 : 154.0,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(top: 72.0),
      decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(5.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0),
            )
          ]),
    );

    return new GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(new PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new DetailPage(advert),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          new FadeTransition(opacity: animation, child: child),
                ))
            : null,
        child: new Container(
            margin: const EdgeInsets.symmetric(
              vertical: 5.0,
              horizontal: 10.0,
            ),
            child: new Stack(
              children: <Widget>[
                adCard,
                adThumbnail,
              ],
            )));
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: new Color(0xff00c6ff),
    );
  }
}
