import 'package:flutter/material.dart';
import 'package:foodtech/constants.dart';
import 'package:foodtech/Firstscreen/rcard.dart';

class recommendList extends StatelessWidget {
  const recommendList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          rcard(imageurl: "assets/images/Pancake.png",
              title: "Pancake",
              price: 240,
              onPress: (){}
          ),
          rcard(imageurl: "assets/images/raspberry.png",
              title: "Raspberry",
              price: 220,
              onPress: (){}),
          rcard(imageurl: "assets/images/blueberry.png",
              title: "Blueberry",
              price: 200,
              onPress: (){})

        ],
      ),
    );
  }
}
