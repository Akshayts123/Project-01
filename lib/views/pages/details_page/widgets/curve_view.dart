import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../consts/size_config.dart';

class TorCurveView extends StatelessWidget {
  final Widget child;
  final Color color;
  const TorCurveView({Key? key, required this.child, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: getProportionateScreenHeight(450),
      padding: EdgeInsets.only(top: getProportionateScreenHeight(50)),
      decoration: BoxDecoration(
        color: color,
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(getProportionateScreenWidth(30)),
        topRight: Radius.circular(getProportionateScreenWidth(30)),
      )),
      child: child,
    );
  }
}
