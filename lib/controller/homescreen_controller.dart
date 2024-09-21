import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/services/servives.dart';
import '../screen/orders/approveorders.dart';
import '../screen/orders/archive.dart';
import '../screen/orders/orderspending.dart';
import '../screen/setting.dart';

abstract class HomeScreencontroller extends GetxController {
  changePage(int i);
}

class HomeScreencontrollerImp extends HomeScreencontroller {
  int currentpage = 0;

  Myservices myservices = Get.find();
  List<Widget> listPage = [
    // const Orderspending(),
    // const ApproveOrders(),
    // const OrdersArchiveView(),
    const Setting()
  ];
  @override
  changePage(int i) {
    currentpage = i;
    update();
  }

  List BottomAppBar = [
    {"title": "Pending", "icon": Icons.notification_add_outlined},
    {"title": "Approve", "icon": Icons.person_pin_sharp},
    {"title": "Achive", "icon": Icons.archive_outlined},
    {"title": "setting", "icon": Icons.settings},
  ];
}
  
  
  // List iconBottomAppBar =["Icons.home","Icons.setting","Icons.profile","Icons.favorites"];

