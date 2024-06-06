

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../consts/size_config.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  // bool favourite = false;
  RxBool favourite = false.obs;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         favourite.value =! favourite.value;
      },
      child:Obx(() =>  Container(
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Center(
          child: favourite.value == true ? Icon( Icons.favorite ,size: 17,color: Theme.of(context).primaryColor,):Icon( Icons.favorite_border,size: 17,color: Theme.of(context).primaryColor,),
        ),
      ),),
    );
  }
}
