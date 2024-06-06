import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/consts/size_config.dart';
import 'package:project/views/pages/details_page/widgets/body.dart';
import 'package:project/views/pages/details_page/widgets/curve_view.dart';

import '../../../controller/items_controller.dart';
import '../../../controller/product_controller.dart';
import '../../widgets/appbar1.dart';
import '../../widgets/button.dart';
import '../../widgets/loading.dart';
import '../home/widgets/appbar.dart';
import '../view_all/view_all.dart';

class ProductDetails extends StatelessWidget {
  final innerimage;
  final imagesection;
  final data;
  ProductDetails({Key? key, this.innerimage, this.imagesection, this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: MyAppBar(
        appbarHeading: 'Product Details ',
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),

        children: [
          BodyDetails(imagesection: imagesection, innerimage: innerimage),
          SizedBox(height: getProportionateScreenHeight(15)),
          TorCurveView(
            color: Theme.of(context).cardColor,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child:Container(
                    margin: EdgeInsets.only(bottom: getProportionateScreenWidth(10)),
                  padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                  width: getProportionateScreenWidth(120),
                  decoration: BoxDecoration(
                    color:Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Rating",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "${data.rating ?? ""}%",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.title ?? "",
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          SizedBox(height: getProportionateScreenHeight(15)),
                          Text(
                            data.description ?? "",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14,
                              letterSpacing: 1.25,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(15)),
                          Row(
                            children: [
                              Text(
                                "Price",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "\$${data.price ?? ""}",
                                style: GoogleFonts.poppins(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: getProportionateScreenHeight(15)),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 14,
                              letterSpacing: 1.25,
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(15)),
                          Row(
                            children: [
                              Text(
                                "See More Detail",
                                style: GoogleFonts.poppins(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                                color: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      DefaultButton(text: "ADD TO CART", press: () {})
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
