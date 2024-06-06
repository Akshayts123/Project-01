

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final appbarHeading;
  MyAppBar({Key? key, required this.appbarHeading,  }) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appbarHeading,style: TextStyle(color: Theme.of(context).primaryColor),),
      leading: Icon(Icons.arrow_back,color: Theme.of(context).primaryColor,),
      centerTitle: false,
    );
  }
}