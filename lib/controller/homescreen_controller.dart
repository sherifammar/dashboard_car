import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/services/servives.dart';
import '../screen/orders/approveorders.dart';
import '../screen/orders/archive.dart';
import '../screen/orders/orderspending.dart';
import '../screen/profile.dart';
import '../screen/setting.dart';

abstract class HomeScreencontroller extends GetxController {
  changePage(int i);
}

class HomeScreencontrollerImp extends HomeScreencontroller {
  int currentpage = 0;

  Myservices myservices = Get.find();
  List<Widget> listPage = [
      const Setting(),
    const Profile(),

    const OrdersArchiveView(),
   
  ];
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }

  List BottomAppBar = [
      {"title": "setting", "icon": Icons.settings},
      {"title": "profile", "icon": Icons.menu},
   

    {"title": "Achive", "icon": Icons.archive_outlined},
  
  ];
}
  
  
  // List iconBottomAppBar =["Icons.home","Icons.setting","Icons.profile","Icons.favorites"];

