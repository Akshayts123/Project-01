

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/pages/home/widgets/product_card.dart';

import '../../../../consts/size_config.dart';
import '../../../../controller/product_controller.dart';
import 'favourite.dart';

class ShopVertical extends GetView<ProductController> {
  const ShopVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return controller.obx((state){
    return Column(
      children: [
        Container(
          height: 210,
          child: ListView.builder(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10, // Replace with your desired item count
            itemBuilder: (BuildContext context, int index) {
              final user = state?[index];
              return Container(
                width: 170, // Replace with your desired item width// Replace with your desired item margin// Replace with your desired item color
                child: ProductCard(user: user, heights: 140, Images: user?.images?[0]??"",listimages: user?.images ?? "",data: user,)
              );
            },
          ),
        ),
      ],
    );},onLoading: const Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text(error.toString())));
  }
}
