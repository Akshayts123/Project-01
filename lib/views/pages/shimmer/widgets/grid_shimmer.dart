
import 'package:flutter/cupertino.dart';

import '../shimmers.dart';

class GridShimmer extends StatelessWidget {
  const GridShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.83,crossAxisSpacing:10 ),
      itemBuilder: (context, index) {
        return Container(
          width: 170,
          margin: EdgeInsets.only(right: 0,bottom: 10),// Replace with your desired item width// Replace with your desired item margin// Replace with your desired item color
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CustomWidget.rectangular(
              height: 190,
              width: 190,
            ),
          ),
        );
      },
    );
  }
}
