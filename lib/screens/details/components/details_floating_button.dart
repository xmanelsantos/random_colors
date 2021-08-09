import 'package:flutter/material.dart';

class DetailsFloatingButton extends StatelessWidget {
  const DetailsFloatingButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: FittedBox(
        child: FloatingActionButton(
          elevation: 10,
          onPressed: () {},
          child: const Icon(
            Icons.save,
          ),
        ),
      ),
    );
  }
}
