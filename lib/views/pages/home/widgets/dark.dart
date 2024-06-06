

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../controller/home_controller.dart';

class Dark extends GetView<HomeController> {
  const Dark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AnimatedBuilder(
            animation: controller.animationController,
            builder: (context, child) {
              return Transform.rotate(
                angle: controller.animationController.value * 1 * pi,
                child: child,
              );
            },
            child: Obx(() => Icon(
              controller.isDarkMode.value
                  ? Icons.dark_mode
                  : Icons.light_mode,
              size: 30,
            ),),
          ),
          SizedBox(
            height: 50,
            child: Center(
              child: Obx(() => AnimatedDefaultTextStyle(
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 500),
                  style: GoogleFonts.ubuntuMono(
                    fontSize: controller.fontSize,
                    color: controller.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                  child:
                  Text(controller.currentModeName.value.toUpperCase())),
              ),),
          ),
          Obx(() =>CupertinoSwitch(
            value: controller.isDarkMode.value,
            onChanged: (bool val) {
              controller.toggleTheme();
            },
          ), ),

        ],
      ),
    );
  }
}
