import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../repository/login_repository/login_repository.dart';
import '../../utils/utils.dart';

class LoginScreenController extends GetxController{

  final _api = LoginRepository();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool isLoading = false.obs;




  void loginApi(){
    isLoading.value = true;
    Map data = {
      "email" : emailController.value.text,
      "password" : passwordController.value.text
    };
    _api.loginApi(data).then((value){
      isLoading.value = false;
      if(value['error'] == 'user not found'){
        Utils.snackBar("Error", value['error']);
      }else {
        Utils.snackBar("Login", "Login Successfully");
      }
    }).onError((error, stackTrace){
      Utils.snackBar("Error", error.toString());
      isLoading.value = false;
    });
  }
}