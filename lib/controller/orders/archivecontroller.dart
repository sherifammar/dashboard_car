import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspect_data.dart';
import '../../data/remote/orders/archive_data.dart';
import '../../data/remote/orders/undercheckup_data.dart';
import '../../data/remote/orders/underfinish_data.dart';
import '../../data/remote/orders/underfix_data.dart';
import '../../model.dart/ordersmodel.dart';

class Archivecontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
   ArchivelData ordersDetail =  ArchivelData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();

  getArchive() async {
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.getAchiveData();

    print("**************** $response");
    statusRequest = handdlingData(response);
    // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        List listdata = response['data'];
        data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update(); // update ui
  }


  @override
  void onInit() {
    // ordersmodels = Get.arguments["ordersmodel"];
getArchive();

    super.onInit();
  }
}