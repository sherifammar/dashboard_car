
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/forgetpassword/resetpassword_controller.dart';

import '../../../../core/class/handingdataview.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/function/validinput.dart';
import '../../widget/auth/Custombuttomauth.dart';
import '../../widget/auth/customTextauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/logoimage.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordcontrollerImp resetpassword_controller =
        Get.put(ResetpasswordcontrollerImp());
// do not forget to add controller to change language
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ColorAPP.background,
          elevation: 0.0,
                 title:const Text("Reset PassWord",
              style:
               TextStyle(fontSize:34, color:ColorAPP.black,fontWeight: FontWeight.bold)),
        ),
        body: GetBuilder<ResetpasswordcontrollerImp>(
          builder: (controller) => HandingDataRequest(statusRequest: controller.statusRequest, widget: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: resetpassword_controller.formstate,
                    child: ListView(children: [
                         const SizedBox(height: 20),
                       const Imageauth(),
                      const SizedBox(height: 20),
                      const CustomTextauth(text: " New Password"),
                      const SizedBox(height: 20),
                      const CustomTextauth(text: " Please enter New Password"),
                      const SizedBox(height: 20),
                      CustomTextformauth(
                        valid: (val) {
                          return validinput(val!, 3, 100, "password");
                        },
                        hinttext: "Enter Your Password",
                        iconData: Icons.lock_clock_outlined,
                        labeltext: "password",
                        mycontroller: resetpassword_controller.password,
                        isNumber: true,
                      ),
                      const SizedBox(height: 20),
                      CustomTextformauth(
                        valid: (val) {
                          return validinput(val!, 3, 100, "password");
                        },
                        hinttext: "Re Enter Your Password",
                        iconData: Icons.lock_clock_outlined,
                        labeltext: "repassword",
                        mycontroller: resetpassword_controller.repassword,
                        isNumber: true,
                      ),
                         const SizedBox(height: 20),
                      CustomButtomauth(
                          text: "Enter",
                          onPressed: () {
                            resetpassword_controller.gotoscecussResetpassword();
                          }),
                      SizedBox(height: 30),
                    ]),
                  ),
                ),)
        ));
  }
}
