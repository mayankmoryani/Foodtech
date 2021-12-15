import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodtech/constants.dart';

class titlewithbtn extends StatelessWidget {
  const titlewithbtn({Key? key,
  required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Customtitle(
            textName: title,
          ),
        ],
      ),
    );
  }
}

class Customtitle extends StatelessWidget {
  const Customtitle({Key? key, required this.textName}) : super(key: key);

  final String textName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(padding: const EdgeInsets.only(left: kDefaultPadding/4),
          child: Text(
            textName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),)
        ],
      ),
    );
  }
}

