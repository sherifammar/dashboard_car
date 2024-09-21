

import 'package:dashboard_car/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:dashboard_car/screen/auth/forgetpassword/resetpassword.dart';
import 'package:dashboard_car/screen/auth/forgetpassword/scucess_resetpassword.dart';
import 'package:dashboard_car/screen/auth/login.dart';
import 'package:dashboard_car/screen/auth/scucess_signup.dart';
import 'package:dashboard_car/screen/auth/sginup.dart';
import 'package:dashboard_car/screen/homescreen.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/routes/get_route.dart';

import 'core/constant/nameroutes.dart';
import 'core/middleware/mymiddleware.dart';




List<GetPage<dynamic>>? routes= [
  // trsting 
// GetPage(name:  "/", page: ()=> DoctorScreen()),
// GetPage(name:  "/", page: ()=>const HomeScreen()),

GetPage(name:  "/", page: ()=>const Login() ,middlewares: [MyMiddleWare()]),

GetPage(name:  AppRoutes.sginup, page: ()=>const Sginup()),
GetPage(name:  AppRoutes.forgetpassword, page: ()=>ForgetPasswprd()),
GetPage(name:   AppRoutes.resetPassword, page: ()=>Resetpassword()),

GetPage(name:    AppRoutes.scucess_resetpassword, page: ()=>const ScusessResetpassword()),
GetPage(name:    AppRoutes.scucess_sginup, page: ()=>const Scusesssginup()),


// GetPage(name:    AppRoutes.verifycode_sginup, page: ()=>const Verifycode_sginup()),
GetPage(name:    AppRoutes.homescreen, page: ()=>const HomeScreen()),

// GetPage(name:    AppRoutes.archive, page: ()=>const OrdersArchiveView()),

//=================== addresss ====


// ===== augment ======
// GetPage(name:    AppRoutes.augment, page: ()=>const Augement()),
//=========== checkout =============


 

// ================= rating ==========


];




// Map<String, Widget Function(BuildContext)> routes = {
//   // AppRoutes.login: (context) => const Login(),
//   // AppRoutes.OnBoarding: (context) => const OnBoarding(),
//   // AppRoutes.sginup: (Context) => const Sginup(),
//   // AppRoutes.forgetpassword: (Context) => ForgetPasswprd(),
//   // AppRoutes.resetPassword: (Context) => Resetpassword(),
//   // AppRoutes.verifycode: (Context) => const Verifycode(),
//   // AppRoutes.scucess_resetpassword:(Context) => ScusessResetpassword(),
//   // AppRoutes.scucess_sginup:(Context) => Scusesssginup(),
 
//   AppRoutes.verifycode_sginup:(Context) => Verifycode_sginup(),
// };
