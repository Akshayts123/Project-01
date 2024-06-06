import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/views/pages/shimmer/shimmers.dart';
import 'package:project/views/pages/shimmer/widgets/appbar_shimmer.dart';
import 'package:project/views/pages/shimmer/widgets/carousel_shimmer.dart';
import 'package:project/views/pages/shimmer/widgets/grid_shimmer.dart';
import 'package:project/views/pages/shimmer/widgets/heading_shimmer.dart';
import 'package:project/views/pages/shimmer/widgets/slider_hori_shimmer.dart';

import '../../../consts/size_config.dart';
import '../home/widgets/product_card.dart';

class ShimmerItems extends StatelessWidget {
  const ShimmerItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return   Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarShimmer(),
              CarouselShimmer(),
              HeadingShimmer(),
              SliderHorizontalShimmer(),
              HeadingShimmer(),
              GridShimmer(),
            ],
          ),
        ),
      ),
    );
  }
}
