import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../controller/auth/scusessresetcontroller.dart';
import '../../../../core/constant/color.dart';
import '../../widget/auth/Custombuttomauth.dart';


class ScusessResetpassword extends StatelessWidget {
  const ScusessResetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ScusessresetcontrollercontrollerImp ScusessResetpasswordcontroller =
        Get.put(ScusessresetcontrollercontrollerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 248, 161, 155),
        elevation: 0.0,
        title:const Text("scusess ",
          style:const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
                )
                ),
      
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
       
           const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 400,
                color: ColorAPP.primaryColor,
              ),
            ),

           const SizedBox(height: 50),
            Container(
              width: 300,
              child: CustomButtomauth(
                  text: "Go to login",
                  onPressed: () {
                    ScusessResetpasswordcontroller.gotoPagelogin();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
