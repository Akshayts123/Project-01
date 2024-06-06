import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../models/product_model.dart';
import '../services/network/api/api_service.dart';
import '../services/network/service/api_exception.dart';

class ProductController extends GetxController with StateMixin<List<Products>> {
  final UserApi _userApi = UserApi();
  var isLoading = false.obs;
  RxList<Products> users = <Products>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }


  void fetchUsers() async {
    try {
      isLoading.value = true;
      final response = await _userApi.getUsers();
      if (response.statusCode == 200) {

        print(":::::::::::::::Response.data:::::::::::::::");
        print(response.data);
        final userModel = ItemsModel.fromJson(response.data);
        print(":::::::::::::::User model:::::::::::::::");
        print(userModel);
        if (userModel.products != null) {

          users.addAll(userModel.products!);
          change(users, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.error('No user found'));
        }
      }
    } on DioError catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      change(null, status: RxStatus.error(apiException.toString()));
    }finally {
      isLoading.value = false;
    }
  }

  void addUser({Map<String, dynamic>? data}) async {
    try {
      final response = await _userApi.postUser(data: data);
      if (response.statusCode == 200) {
        fetchUsers();
      }
    } on DioError catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      throw apiException;
    }
  }

  void updateUser(String id, {Map<String, dynamic>? data}) async {
    try {
      final response = await _userApi.putUser(id, data: data);
      if (response.statusCode == 200) {
        fetchUsers();
      }
    } on DioError catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      throw apiException;
    }
  }

  void deleteUser(String id) async {
    try {
      final response = await _userApi.deleteUser(id);
      if (response.statusCode == 200) {
        fetchUsers();
      }
    } on DioError catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      throw apiException;
    }
  }
}




