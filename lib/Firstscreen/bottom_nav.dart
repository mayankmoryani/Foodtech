import 'package:flutter/material.dart';

import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      height: 70,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 30,
            color: kPrimaryColor.withOpacity(0.23))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: kPrimaryColor,
              )),
          IconButton(
              onPressed: () {},
              icon:const Icon(
                Icons.add_shopping_cart,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.perm_identity,

              )),
        ],
      ),
    );
  }
}
