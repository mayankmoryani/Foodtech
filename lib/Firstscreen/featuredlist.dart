import 'package:flutter/material.dart';
import '../../../constants.dart';

class FeatureItems extends StatelessWidget {
  const FeatureItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureCard(
            imageUrl: "assets/images/Noodles.png",
            onPress: () {},
          ),
          FeatureCard(
            imageUrl: "assets/images/pasta.png",
            onPress: () {},
          ),
          FeatureCard(
            imageUrl: "assets/images/Ham.png",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  const FeatureCard({
    Key? key,
    required this.imageUrl,
    required this.onPress,
  }) : super(key: key);

  final String imageUrl;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => onPress,
      splashColor: kPrimaryColor.withOpacity(0.23),
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2,
            right: kDefaultPadding),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(imageUrl), fit: BoxFit.cover)),
      ),
    );
  }
}
