import 'package:flutter/material.dart';

import '../../../constants.dart';

class DetailsNavigationBar extends StatelessWidget {
  const DetailsNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // ! TODO : NEED REPAIR SHAPE OF BOTTON NAV BAR WITH FLOATBUTTON
      shape: const CircularNotchedRectangle(),
      color: Colors.white,
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
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.of(context).pop();
                }),
            IconButton(icon: const Icon(Icons.list), onPressed: () {}),
            const SizedBox(
              height: 60,
              width: 50,
            )
          ],
        ),
      ),
    );
  }
}
