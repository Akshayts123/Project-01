import 'package:flutter/cupertino.dart';

import '../shimmers.dart';

class CarouselShimmer extends StatelessWidget {
  const CarouselShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CustomWidget.rectangular(
          height: 200,
          width: double.infinity,
        ),
      ),
    );
  }
}
