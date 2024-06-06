import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../controller/items_controller.dart';
import '../../../../controller/product_controller.dart';
import '../../details_page/product_details.dart';
import 'favourite.dart';

class HomeProducts extends StatelessWidget {
  final data;
  final index;
  const HomeProducts({Key? key, this.data, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.find<ProductController>();

    return InkWell(
      onTap: () {
        // productController.selectedProduct = data;
        // Get.to( ProductDetails(innerimage: data??"" ,));
        // Get.to(() => ProductDetailScreen());
      },
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            elevation: 2,
            margin: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(data),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 8, right: 5),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(
                            data['title'],
                            style:
                            Theme.of(context).textTheme.bodyText2,
                            softWrap: false,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 1),
                  child: Row(
                    children: [
                      Text(
                        "Price",
                        style: Theme.of(context).textTheme.button,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$${data['price']}",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Favourite(),
          ),
        ],
      ),
    );
  }
}
