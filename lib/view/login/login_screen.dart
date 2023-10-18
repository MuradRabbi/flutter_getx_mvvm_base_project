import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resources/common_widgets/custom_button.dart';
import '../../utils/utils.dart';
import '../../view_model/controller/login_screen_controller.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  LoginScreenController controller = Get.put(LoginScreenController());
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx((){
        return controller.isLoading.value == true ? Center(child: CircularProgressIndicator(),) :  Form(
          key:_formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                TextFormField(
                  controller: controller.emailController.value,
                  validator: (value){
                    if(value!.isEmpty){
                      Utils.snackBar("Password", "Please enter Email");
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.deepPurple)
                      )

                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: controller.passwordController.value,
                  obscureText: true,
                  validator: (value){
                    if(value!.isEmpty){
                      Utils.snackBar("Password", "Please enter password");
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.deepPurple)
                      )

                  ),
                ),
                SizedBox(height: 20,),
                CustomButton(
                    onTap: (){
                      if(_formKey.currentState!.validate()){};
                      controller.loginApi();
                    },
                    title: "LOGIN"),
                Spacer(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
