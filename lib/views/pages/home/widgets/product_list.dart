

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/views/pages/home/widgets/product_card.dart';

import '../../../../consts/size_config.dart';
import '../../../../controller/product_controller.dart';
import '../../../widgets/loading.dart';
import 'favourite.dart';
import 'home_product.dart';

class ProductsView extends GetView<ProductController> {
  const ProductsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return controller.obx((state){
      return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 15),
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.83),
        itemBuilder: (context, index) {
          final user = state?[index];
          return ProductCard(user: user, heights: 150, Images: user?.thumbnail??"",listimages: user?.images??"",data: user,);
        },
      );

    }, onLoading: const Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text(error.toString())));
  }
}
