import 'package:flutter/material.dart';
import 'package:random_colors/constants.dart';

class RandomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 3,
        right: kDefaultPadding * 3,
      ),
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            color: Colors.black38,
            blurRadius: 30,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Image.asset('assets/icons/002-paper.png'),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/icons/004-man.png'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
