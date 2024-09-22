import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspect_data.dart';
import '../../model.dart/ordersmodel.dart';

class Inspectcontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
  OrdersApprove_underinspectlData ordersDetail = OrdersApprove_underinspectlData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();
  String? ordersid;
 DateTime dateTime = DateTime.now();

  String? ordersdate;
 choosetpeBookingdate(String val) {
    ordersdate = val;
    print(val);
    update();
  }

//=================
 late TextEditingController inspect;


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

  gotoapprove() async {
    data.clear();
    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersDetail.UppdateapproveToinspect(
       ordersid !,  ordersdate!,  inspect.text) ; // getData for test_data page == it post data to url test

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
    ordersid = Get.arguments["ordersid"];
     getapproveunderinspect();
print("ordersid =====> $ordersid");
    inspect = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    inspect.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
