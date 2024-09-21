import 'dart:io';




import 'package:dashboard_car/screen/widget/auth/bottomnavigationappbarhomescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/homescreen_controller.dart';
import '../core/constant/nameroutes.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreencontrollerImp());
    return GetBuilder<HomeScreencontrollerImp>(
      builder: (controller) => Scaffold(
          
         // locat in center
          bottomNavigationBar:  bottomNavigationAppBarHomeScreen(),
          body: 
          WillPopScope(
              child: controller.listPage.elementAt(controller.currentpage),
              onWillPop: () {
                Get.defaultDialog(
                  title: "warn",
                  middleText: "Do You Want Exit from APP",
                  onCancel: () {},
                  onConfirm: () {
                    exit(0);
                  },
                );
                return Future.value(false);
              }) // method change page . screen is built in body
          ),
    );
  }
}
