import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/StatusRequest.dart';
import '../../core/constant/nameroutes.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/approveorder_underinspect_data.dart';
import '../../model.dart/ordersmodel.dart';

class Approveorderscontroller extends GetxController {
  late StatusRequest statusRequest = StatusRequest.none;
  List<OrdersModel> data = [];
  OrdersApprove_underinspectlData ordersDetail = OrdersApprove_underinspectlData(Get.find());
  late OrdersModel ordersmodels;
  Myservices myservices = Get.find();


//=================



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
//===========================

Gotoinspect(String ordersid) {
   Get.toNamed(AppRoutes.inspectorder, arguments: {
            "ordersid": ordersid
          }); 
}

 

  @override
  void onInit() {
    // ordersmodels = Get.arguments["ordersmodel"];
     getapproveunderinspect();


    super.onInit();
  }

}
