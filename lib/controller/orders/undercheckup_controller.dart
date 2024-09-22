import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspect_data.dart';
import '../../data/remote/orders/undercheckup_data.dart';
import '../../data/remote/orders/underfinish_data.dart';
import '../../data/remote/orders/underfix_data.dart';
import '../../model.dart/ordersmodel.dart';

class Undercheckupcontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
   UndercheckupData ordersDetail =  UndercheckupData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();
  
  DateTime dateTime = DateTime.now();
  String? ordersdate;
 choosetpeBookingdate(String val) {
    ordersdate = val;
    print(val);
    update();
  }

  getUndercheckup() async {
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.getundercheckupData();

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

 uppdatefixtocheckup (String ordersid) async {
    data.clear();
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.Uppdatefixtocheckup (ordersid,
        ordersdate!); // getData for test_data page == it post data to url test

    print("**************** $response");
    statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "note", messageText: const Text("sucess to checkup"));
        orderrefresh();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  orderrefresh() {
  getUndercheckup();
  }

  @override
  void onInit() {
    // ordersmodels = Get.arguments["ordersmodel"];
getUndercheckup();

    super.onInit();
  }
}