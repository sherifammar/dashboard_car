import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspect_data.dart';
import '../../data/remote/orders/underfinish_data.dart';
import '../../data/remote/orders/underfix_data.dart';
import '../../model.dart/ordersmodel.dart';

class Underfixcontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
  UnderfixData ordersDetail = UnderfixData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();
  //=================
   DateTime dateTime = DateTime.now();
  String? ordersdate;
 choosetpeBookingdate(String val) {
    ordersdate = val;
    print(val);
    update();
  }

  getUnderfix() async {
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.getUnderfixData();

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

  UppdateinspectTofix(String ordersid) async {
    data.clear();
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.UppdateinspectTofix(ordersid,
        ordersdate!); // getData for test_data page == it post data to url test

    print("**************** $response");
    statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "note", messageText: const Text("sucess to fix"));
        orderrefresh();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  orderrefresh() {
    getUnderfix()();
  }

  @override
  void onInit() {
    // ordersmodels = Get.arguments["ordersmodel"];
    getUnderfix();

    super.onInit();
  }
}
