import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project/controller/product_controller.dart';
import 'package:project/views/pages/home/home.dart';
import 'package:project/views/pages/home/widgets/product_list.dart';
import 'package:project/views/pages/home/widgets/shop_vertical.dart';
import 'package:project/views/pages/home/widgets/slider.dart';
import 'package:project/views/widgets/loading.dart';
import '../../../../consts/size_config.dart';
import '../../shimmer/shimmer_items.dart';
import '../../shimmer/shimmers.dart';
import '../../view_all/view_all.dart';
import 'carousel_slider.dart';
import 'category_option_view.dart';
import 'category_select.dart';
import 'dark.dart';
import '../../../widgets/heading.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(15)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(20)),
            SliderScreen(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(15)),
            Heading(
                heading: "New In ",
                press: () {
                  Get.to(ViewAll());
                  homeController.updateCondition(1);
                }),
            SizedBox(height: getProportionateScreenHeight(15)),
            ShopVertical(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Heading(
                heading: "All Products",
                press: () {
                  Get.to(ViewAll());
                  homeController.updateCondition(2);
                }),
            CategorySelect(),
            SizedBox(height: getProportionateScreenHeight(15)),
            ProductsView(),
          ],
        ),
      ),
    );
  }
}

Widget buildMovieShimmer(context) => ListTile(
      leading: CustomWidget.circular(height: 64, width: 64),
      title: Align(
        alignment: Alignment.centerLeft,
        child: CustomWidget.rectangular(
          height: 16,
          width: MediaQuery.of(context).size.width * 0.3,
        ),
      ),
      subtitle: CustomWidget.rectangular(height: 14),
    );
