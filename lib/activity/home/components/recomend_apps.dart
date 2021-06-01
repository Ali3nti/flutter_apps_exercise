import 'package:flutter/material.dart';
import 'package:flutter_apps_exercise/activity/apps/mi_card/mi_card.dart';
import 'package:flutter_apps_exercise/activity/apps/who_am_i/who_am_i.dart';
import 'package:flutter_apps_exercise/activity/details/details_screen.dart';

import '../../../constants.dart';

class RecommendsApps extends StatelessWidget {
  const RecommendsApps({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedAppsCard(
            image: "assets/images/flutter_icon.png",
            title: "Who Am I App",
            country: "TEST",
            price: 1,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WhoAmI(),
                  ));
            },
          ),
          RecomendedAppsCard(
            image: "assets/images/flutter_icon.png",
            title: "MiCard App",
            country: "TEST",
            price: 2,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MiCard(),
                  ));
            },
          ),
          RecomendedAppsCard(
            image: "assets/images/pizza2.png",
            title: "vegetable",
            country: "GoodApps",
            price: 12,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendedAppsCard(
            image: "assets/images/pizza3.png",
            title: "pepperoni",
            country: "Pasha",
            price: 20,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendedAppsCard(
            image: "assets/images/pizza1.png",
            title: "Alferedo",
            country: "Tachar",
            price: 10,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendedAppsCard(
            image: "assets/images/pizza2.png",
            title: "vegetable",
            country: "GoodApps",
            price: 12,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
          RecomendedAppsCard(
            image: "assets/images/pizza3.png",
            title: "pepperoni",
            country: "Pasha",
            price: 20,
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class RecomendedAppsCard extends StatelessWidget {
  const RecomendedAppsCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefultPadding,
          top: kDefultPadding / 2,
          bottom: kDefultPadding * 2.5),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(children: [
          Image.asset(image),
          Container(
            padding: EdgeInsets.all(kDefultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: kPrimaryColor.withOpacity(0.23),
                    blurRadius: 50,
                  )
                ]),
            child: Row(children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ),
                  TextSpan(
                    text: "$country".toUpperCase(),
                    style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                  )
                ]),
              ),
              Spacer(),
              Text(
                '\#$price',
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: kPrimaryColor),
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
