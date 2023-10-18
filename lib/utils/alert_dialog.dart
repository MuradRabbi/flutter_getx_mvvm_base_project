import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../resources/colors/app_colors.dart';



Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0.h))
        ),
        content: Container(
          height: 176.h,
          width: 328.h,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 16.h,
                      width: 16.h,
                      child: Image.asset(
                        width: 16.h,
                        height: 16.h,
                        "images/icon_cancel_gray.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Text(
                'user_signup_upload_image_from_text'.tr,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.blackColor,
                  fontSize: 16.sp,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);

                },
                child: Container(
                  height: 36.h,
                  width: 130.h,
                  margin: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8.h)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16.h,
                        width: 16.h,
                        child: Image.asset(
                          width: 16.h,
                          height: 16.h,
                          "images/icon_camera.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(width: 4.h),
                      Text(
                        'user_signup_camera_text'.tr,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.blue,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pop(context);

                },
                child: Container(
                  height: 36.h,
                  width: 130.h,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.h)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 16.h,
                        width: 16.h,
                        child: Image.asset(
                          width: 16.h,
                          height: 16.h,
                          "images/icon_upload_gallery.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(width: 4.h),
                      Text(
                        'user_signup_gallery_text'.tr,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}