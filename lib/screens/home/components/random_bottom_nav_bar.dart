import 'package:flutter/material.dart';
import 'package:random_colors/constants.dart';

class RandomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
      elevation: 15,
      child: Container(
        padding: const EdgeInsets.only(
          left: kDefaultPadding * 3,
          right: kDefaultPadding * 3,
        ),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset('assets/icons/002-paper.png'),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset('assets/icons/004-man.png'),
              onPressed: () {
                Navigator.of(context).pushNamed('/welcome');
              },
            ),
          ],
        ),
      ),
    );
  }
}
