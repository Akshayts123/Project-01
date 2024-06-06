

import 'package:flutter/cupertino.dart';

import '../shimmers.dart';

class AppbarShimmer extends StatelessWidget {
  const AppbarShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CustomWidget.rectangular(
              height: 50,
              width: 200,
            ),
          ),
          SizedBox(width: 20,),
          CustomWidget.circular(
            height: 50,
            width: 50,
          ),
          SizedBox(width: 20,),
          CustomWidget.circular(
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
