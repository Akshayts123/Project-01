import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../view_all/view_all.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {
      "id": 1,
      "image_path": 'assets/shoe1.jpg',
      "sale": "Get your",
      "sale_bottom": "special sale1",
      "offer" : "up to 65%"
    },
    {
      "id": 2,
      "image_path": 'assets/shoe2.jpg',
      "sale": "Get your1",
      "sale_bottom": "special sale2",
      "offer" : "up to 45%"
    },
    {
      "id": 3,
      "image_path": 'assets/shoe3.jpg',
      "sale": "Get your2",
      "sale_bottom": "special sale3",
      "offer" : "up to 20%"
    },
    {
      "id": 4,
      "image_path": 'assets/shoe4.jpg',
      "sale": "Get your3",
      "sale_bottom": "special sale4",
      "offer" : "up to 35%"
    },
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return controller.obx((state){
    return Column(children: [
      Stack(
        children: [
          InkWell(
            onTap: () {
              print(currentIndex);
            },
            child: CarouselSlider(
              items: controller.users
                  .map(
                    (item) {
                      return Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
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
                                item.thumbnail??"",
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 30,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    item.brand.toString(),
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    item.title.toString(),
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500), maxLines: 2,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  // Container(
                                  //   height: 30,
                                  //   width: 100,
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.white,
                                  //       borderRadius:
                                  //           BorderRadius.circular(10)),
                                  //   child: Center(
                                  //       child: Text(
                                  //         item['offer'].toString(),
                                  //     style: GoogleFonts.poppins(
                                  //         color: Colors.black,
                                  //         fontSize: 15,
                                  //         fontWeight: FontWeight.w500),
                                  //   )),
                                  // ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );},
                  )
                  .toList(),
              carouselController: carouselController,
              options: CarouselOptions(
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlay: true,
                aspectRatio: 2.3,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
          ),
          // Positioned(
          //   bottom: 10,
          //   left: 0,
          //   right: 0,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: imageList.asMap().entries.map((entry) {
          //       return GestureDetector(
          //         onTap: () => carouselController.animateToPage(entry.key),
          //         child: Container(
          //           width: currentIndex == entry.key ? 6 : 6,
          //           height: 6.0,
          //           margin: const EdgeInsets.symmetric(
          //             horizontal: 2.0,
          //           ),
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(10),
          //               color: currentIndex == entry.key
          //                   ?  Theme.of(context).primaryColor
          //                   : Colors.grey),
          //         ),
          //       );
          //     }).toList(),
          //   ),
          // ),
        ],
      ),
    ]);},onLoading: const Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text(error.toString())));
  }
}
