import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspectdata.dart';
import '../../model.dart/ordersmodel.dart';

class Approve_underinspectcontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
  OrdersApprove_underinspectlData ordersDetail = OrdersApprove_underinspectlData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();





  getapproveunderinspect() async {
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.getApproveUnderinspectsData();

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

  gotoapprove(String ordersid , String ordersinspectdate, String ordersinspect) async {
    data.clear();
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.UppdateapproveToinspect(
        ordersid ,  ordersinspectdate,  ordersinspect) ; // getData for test_data page == it post data to url test

    print("**************** $response");
    statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "note",
            messageText: const Text("sucess to inspect"));
        orderrefresh();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  orderrefresh() {
     getapproveunderinspect();
  }

 

  @override
  void onInit() {
    // ordersmodels = Get.arguments["ordersmodel"];
     getapproveunderinspect();

    super.onInit();
  }
}
