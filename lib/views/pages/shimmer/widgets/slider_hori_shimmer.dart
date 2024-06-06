

import 'package:flutter/cupertino.dart';

import '../../../../consts/size_config.dart';
import '../shimmers.dart';

class SliderHorizontalShimmer extends StatelessWidget {
  const SliderHorizontalShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView.builder(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10, // Replace with your desired item count
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 170,
            margin: EdgeInsets.only(right: 10),// Replace with your desired item width// Replace with your desired item margin// Replace with your desired item color
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CustomWidget.rectangular(
                height: 190,
                width: 190,
              ),
            ),
          );
        },
      ),);
  }
}
