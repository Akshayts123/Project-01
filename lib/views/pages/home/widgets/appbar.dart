

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/theme/element/text_theme.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String appbars;
  final IconData? iconic;
  final IconData? leads;
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const CustomAppbar({Key? key, required this.appbars,  this.iconic, this.leads}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: Icon(leads, color: Theme.of(context).primaryColor),
      title: Text(appbars,style: CustomTextTheme.textThemeDark.headline6,),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: Icon(iconic, color:  Colors.white),
      )],
    );
  }
}
