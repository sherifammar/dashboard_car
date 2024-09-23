import 'dart:io';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/nameroutes.dart';
import '../core/services/servives.dart';

class ProfileController extends GetxController {
  Myservices myservices = Get.find();

  logout() {
  
    //  =========================
    myservices.sharedPreferences.clear();
    Get.defaultDialog(
      title: "warn",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      middleText: "Do You Want Exit from APP",
      // cancelTextColor: ColorAPP.primaryColor,
      // confirmTextColor: ColorAPP.primaryColor,
      onCancel: () {},
      onConfirm: () {
        Get.offAllNamed(AppRoutes.login);
      },
    );
  }



  @override
  void onInit() {
  

    //==========================

   
    // selectMode() ;

    super.onInit();
  }
}
