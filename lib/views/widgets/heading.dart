
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/theme/element/text_theme.dart';

class Heading extends StatelessWidget {
  final String heading;
  final GestureTapCallback? press;
  const Heading({Key? key, required this.heading,  this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading , style: Theme.of(context).textTheme.headline6,),
          GestureDetector(
            onTap: press,
            child: Text("View All",style: GoogleFonts.poppins(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
              letterSpacing: 0.25,
            ),),
          )
        ],
      ),
    );
  }
}
