import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:project/controller/product_controller.dart';
import 'package:project/views/pages/home/home.dart';

import '../../../consts/size_config.dart';
import '../../widgets/appbar1.dart';
import '../../widgets/loading.dart';
import '../home/widgets/product_card.dart';

final ProductController controller = Get.find<ProductController>();

class ViewAll extends StatelessWidget {
  ViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return controller.obx((state) {
      return Scaffold(
        appBar: MyAppBar(
            appbarHeading: homeController.selectedCondition.value == 1
                ? "New In"
                : homeController.selectedCondition.value == 2
                    ? "All Products"
                    : ""),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 15),
                itemCount: state?.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.83),
                itemBuilder: (context, index) {
                  final user = state?[index];
                  return homeController.selectedCondition.value == 1
                      ? ProductCard(
                          user: user,
                          heights: 150,
                          Images: user?.images?[0] ?? "",
                          listimages: user?.images ?? "",
                          data: user,
                        )
                      : homeController.selectedCondition.value == 2
                          ? ProductCard(
                              user: user,
                              heights: 150,
                              Images: user?.thumbnail ?? "",
                              listimages: user?.images ?? "",
                              data: user,
                            )
                          : Container();
                },
              ),
            ],
          ),
        ),
      );
    },
        onLoading: const Center(child: loading()),
        onError: (error) => Center(child: Text(error.toString())));
  }
}
