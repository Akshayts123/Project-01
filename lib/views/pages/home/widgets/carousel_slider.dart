
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../view_all/view_all.dart';

class CarouselSliderView extends StatelessWidget {
  const CarouselSliderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state){
    return CarouselSlider.builder(
      itemCount: state!.length,
      itemBuilder: (context, index, realIndex) {
        final user = state[index];
        return Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).primaryColor,
                        Colors.transparent,
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0, 0.8],
                    ),
                  ),
                  child: Image.network(
                    user.thumbnail!,
                    fit: BoxFit.cover,
                    height: 170,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.brand.toString(),
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        user.title.toString(),
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 9,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        viewportFraction: 0.9,
      ),
    );});
  }
}
