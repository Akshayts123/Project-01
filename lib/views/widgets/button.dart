import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../consts/size_config.dart';
import '../../utils/theme/theme.dart';
import '../pages/home/home.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
      width: double.infinity,
      height: getProportionateScreenHeight(50),
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style:  GoogleFonts.poppins(
            color: themeController.isDarkTheme ? Colors.black : Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,

            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}