

import 'package:flutter/cupertino.dart';

import '../shimmers.dart';

class HeadingShimmer extends StatelessWidget {
  const HeadingShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomWidget.rectangular(
            height: 20,
            width: 110,
          ),
          CustomWidget.rectangular(
            height: 20,
            width: 110,
          ),
        ],
      ),
    );
  }
}
