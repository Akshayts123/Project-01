import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/controller/home_controller.dart';

import '../../../../controller/data_controller.dart';

class CategorySelect extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();
   CategorySelect({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    DataController datas = Get.put(DataController());
    return Container(
      height: 35,
      margin: EdgeInsets.only(top: 15,bottom: 15,left: 20),
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: datas.categorysort.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () => controller.toggle(index),
                child:Obx(
                      () =>  Container(
                  decoration: BoxDecoration(
                      color: controller.category.value == index
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).scaffoldBackgroundColor,
                      border: Border.all(
                          width: 1,
                          color: controller.category.value == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      datas.categorysort[index],
                      style: GoogleFonts.poppins(
                        color: controller.category.value == index
                            ? Theme.of(context).scaffoldBackgroundColor
                            : Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
