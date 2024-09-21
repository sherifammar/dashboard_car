
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../core/class/StatusRequest.dart';

import '../../core/function/handlingdatacontroller.dart';
import '../../core/services/servives.dart';

import '../../data/remote/orders/underdelivery_finish.dart';
import '../../model.dart/ordersmodel.dart';


class UnderdeliveryfinishController extends GetxController {
UnderdeliveryfinishData ordersData = UnderdeliveryfinishData(Get.find());

  List<OrdersModel> archiveData = [];

  late StatusRequest statusRequest;

  Myservices myServices = Get.find();


  GetunderdeliveryfinishData() async {
    archiveData.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await ordersData
        .getunderdeliveryfinishData();
    print("=============================== Controller $response ");
    statusRequest = handdlingData(response);
    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
       archiveData.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }
 uppdatetoarchive (String ordersid, String ordersdeliverdate) async {

    statusRequest = StatusRequest.loading; // for  loading
    var response = await ordersData. Uppdatetoarchive (ordersid,
        ordersdeliverdate); // getData for test_data page == it post data to url test

    print("**************** $response");
    statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "note", messageText: const Text("sucess to delivery"));
        orderrefresh();
      } else {
        statusRequest = StatusRequest.failure;
      }
    }

    update();
  }

  orderrefresh() {
GetunderdeliveryfinishData();
  }

 @override
  void onInit() {
GetunderdeliveryfinishData();

    super.onInit();
  }

// =================================
  
}
 

 