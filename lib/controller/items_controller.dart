//
//
// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:http/http.dart ' as http;
//
// class ItemsController extends GetxController {
//   var isWorking = false.obs;
//   var productList = [].obs;
//   getProducts() async{
//    isWorking.value= true;
//    // https://dummyjson.com/products?limit=100
//     const productUrl ="https://dummyjson.com/products?limit=100";
//     try{
//       var response = await http.get(Uri.parse(productUrl));
//       final data = json.decode(response.body);
//       productList.value = data['products'];
//
//     }
//     catch(e){
//       productList.value =[];
//     }
//     finally{
//       isWorking.value = false;
//     }
//     return productList;
//   }
//
// }