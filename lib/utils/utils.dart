import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../resources/colors/app_colors.dart';





class Utils{

  static void fieldFocusChange(BuildContext context , FocusNode currentFocus, FocusNode nextFocus){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }


  static flutterToast(String message){
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: AppColors.blackColor
    );
  }


  static snackBar(String title, String message){
    Get.snackbar(
        title,
        message,
        duration: Duration(milliseconds: 1000),
        colorText: Colors.white,
        backgroundColor: AppColors.blackColor
    );
  }

}