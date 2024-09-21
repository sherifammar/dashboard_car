

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/constant/nameroutes.dart';

import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';
import '../../data/remote/auth/login.dart';



abstract class Logincontroller extends GetxController {
  login();
  gotosginup();
  gotoforgetpassword();
}

class LogincontrollerImp extends Logincontroller {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  bool isShowpassword = true; // show pasword from icon
  Myservices myservices = Get.find();

  StatusRequest statusRequest = StatusRequest.none; // remove error of loading

  LoginData loginData = LoginData(
      Get.find()); // binding and get.find => solve problem of constructure crud
  List data = [];

  showPassword() {
    isShowpassword = isShowpassword == true
        ? false
        : true; // error solved => isShowpassword = isShowpassword
    update(); // change in ui
  }

  @override
  gotosginup() {
    Get.offNamed(AppRoutes.sginup);
  }

  @override
  login() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading; // for  loading
      update();
      var response = await loginData.postData(email.text, password.text);

      print("**************** $response*********");

      statusRequest = handdlingData(
          response); // it give statusrequest error or statusrequest sucess

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // if (response["data"]["users_approve"] == "1") {
            myservices.sharedPreferences.setString(
                "id",
                response["data"][
                    "admin_id"]); // "data" name of var from getdata in function.php page users_id == name of colum in database
            myservices.sharedPreferences
                .setString("username", response["data"]["admin_name"]);
            myservices.sharedPreferences
                .setString("email", response["data"]["admin_email"]);
            myservices.sharedPreferences
                .setString("phone", response["data"]["admin_phone"]);
            myservices.sharedPreferences.setString(
                "step", "2"); //save account and direct go to homepage

    
            Get.offNamed(AppRoutes.homescreen);
         
        
        } 
        else {
          Get.defaultDialog(
              title: "warning", middleText: "Password and email are not exist");
          statusRequest = StatusRequest.failure; //error in data
      
        }
      }

      update();

      print("valid");
    } else {
      print("non valid");
    }
  }

  @override
  void onInit() {

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpassword() {
    Get.toNamed(AppRoutes.forgetpassword);
  }
}
