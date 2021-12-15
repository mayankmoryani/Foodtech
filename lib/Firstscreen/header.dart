import 'package:flutter/material.dart';
import 'package:foodtech/constants.dart';

class Headerwithsearch extends StatelessWidget {
  const Headerwithsearch({Key? key,
  required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding*0.5-10),
      height: size.height * 0.2 - 30,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: kDefaultPadding,
              bottom: kDefaultPadding-10),
            height: size.height * 0.1,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              )
            ),

            child: Row(
              children: [

                IconButton(onPressed: (){}, icon: const Icon(
                  Icons.room,
                  color: Colors.white,
                )),



                Text(
                  "Gomti Nagar, Lucknow",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                const Spacer(),
                // Image.asset("assets/images/Burger.png",
                // width: 50,
                // height: 50,)
                
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23)
                  )
                ]
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                        onChanged: (value){},
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle:
                            TextStyle(color: kTextColor.withOpacity(0.2)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),),
                  Icon(Icons.search),
                ],
              ),

            ),

          )
        ],
      ),
    );

  }
}
