import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class HexColorBox extends StatelessWidget {
  const HexColorBox({
    Key key,
    @required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    final String colorHex = color.toString().split('(0xff')[1].split(')')[0];
    return Container(
      padding:
          const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(-4, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.32),
          )
        ],
      ),
      child: Row(
        children: [
          Text(
            '#',
            style: GoogleFonts.aBeeZee(fontSize: 30, color: Colors.black54),
          ),
          const VerticalDivider(
            color: Colors.white,
            indent: 5,
            endIndent: 5,
          ),
          GestureDetector(
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: colorHex));
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Copiado !')));
            },
            child: Text(
              colorHex,
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
