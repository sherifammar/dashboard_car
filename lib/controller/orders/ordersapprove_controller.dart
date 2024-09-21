// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../core/class/StatusRequest.dart';
// import '../../core/function/handlingdatacontroller.dart';
// import '../../core/services/servives.dart';
// import '../../data/remote/orders/approveorder_data.dart';
// import '../../model.dart/ordersmodel.dart';

// class OrdersApprovecontroller extends GetxController {
//   late StatusRequest statusRequest = StatusRequest.none;
//   List<OrdersModel> data = [];
//   OrdersApproveDetailData ordersDetail = OrdersApproveDetailData(Get.find());
//   late OrdersModel ordersmodels;
//   Myservices myservices = Get.find();

// changeType(String visit) {
// if (visit == "0") {
//   return "frist visit";
// } else if (visit == "1") {
//   return "second visit";
// }
// }



//   getOrdersdetail() async {
//     statusRequest = StatusRequest.loading; // for  loading
//     var response = await ordersDetail.getordersData();

//     print("**************** $response");
//     statusRequest = handdlingData(response);
//     // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//         data.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update(); // update ui
//   }

//   gotoapprove(String ordersid) async {
//     data.clear();
//     statusRequest = StatusRequest.loading; // for  loading
//     var response = await ordersDetail.changeToarchive(
//         ordersid); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         Get.rawSnackbar(
//             title: "note",
//             messageText: const Text("sucess to transfer archive"));
//         orderrefresh();
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }

//     update();
//   }

//   orderrefresh() {
//     getOrdersdetail();
//   }

//   deletOrders(String ordersid) async {
//     // data.clear();
//     statusRequest = StatusRequest.loading; // for  loading
//     var response = await ordersDetail.removeOrder(
//         ordersid); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         Get.rawSnackbar(title: "note", messageText: Text("sucess to remove "));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }

//   @override
//   void onInit() {
//     // ordersmodels = Get.arguments["ordersmodel"];
//     getOrdersdetail();

//     super.onInit();
//   }
// }
