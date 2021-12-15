import 'package:flutter/material.dart';
import 'package:foodtech/constants.dart';

class rcard extends StatelessWidget {
  const rcard({Key? key,
  required this.imageurl,
  required this.title,
    required this.price,
    required this.onPress,
    }) : super(key: key);

  final String imageurl,title;
  final int price;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        right: kDefaultPadding/2,
        bottom: kDefaultPadding,
      ),
      width: size.width*0.4,
      child: itemCard(context),

    );
  }


  Card itemCard(BuildContext context) {
    return Card(

      shadowColor: kPrimaryColor.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 5,
      child: InkWell(
        splashColor: kPrimaryColor.withOpacity(0.23),
        onTap: onPress,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imageurl,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: kDefaultPadding * 0.5,
                right: kDefaultPadding * 0.6,
                left: kDefaultPadding * 0.6,
                bottom: kDefaultPadding * 0.5,
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                      ])),
                  const Spacer(),
                  Text(
                    "$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

