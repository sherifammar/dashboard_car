import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspectdata.dart';
import '../../data/remote/orders/undercheckup.dart';
import '../../data/remote/orders/underfinish.dart';
import '../../data/remote/orders/underfix.dart';
import '../../model.dart/ordersmodel.dart';

class Undercheckupcontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
   UnderfinishData ordersDetail =  UnderfinishData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();

  getUnderfinish() async {
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.getunderfinishData();

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

   uppdatecheckuptofinish (String ordersid, String ordersfinish) async {
    data.clear();
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.  Uppdatecheckuptofinish (ordersid,
        ordersfinish); // getData for test_data page == it post data to url test

    print("**************** $response");
    statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "note", messageText: const Text("sucess to finish"));
        orderrefresh();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  orderrefresh() {
  getUnderfinish();
  }

  @override
  void onInit() {
    
  getUnderfinish();

    super.onInit();
  }
}