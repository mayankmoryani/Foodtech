
import 'package:flutter/material.dart';
import 'package:foodtech/constants.dart';
import 'package:foodtech/Firstscreen/header.dart';
import 'package:foodtech/Firstscreen/titlewithbtn.dart';
import 'recommended.dart';
import 'featuredlist.dart';
import 'bottom_nav.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Image.asset("assets/images/hamburger white.png"),
          ),
        ]
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Headerwithsearch(size: size),

            const titlewithbtn(
              title: 'Recommended',
            ),

            const recommendList(),

            const titlewithbtn(title: 'Featured'),

            const FeatureItems(),

            const SizedBox(
              height: kDefaultPadding,
            )


          ],
        ),
      ),

        bottomNavigationBar: BottomNavBar());
  }
}


