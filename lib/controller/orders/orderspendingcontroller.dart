
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../core/class/StatusRequest.dart';
// import '../../core/constant/nameroutes.dart';
// import '../../core/function/handlingdatacontroller.dart';
// import '../../core/services/servives.dart';
// import '../../data/remote/orders/orderspending_data.dart';
// import '../../model.dart/ordersmodel.dart';



// class OrderPendingController extends GetxController {
//   List<OrdersModel> data = []; // to save data from response
// List<OrdersModel> archivedata = []; // to save data from response
//   DateTime dateTime = DateTime.now();
//   late StatusRequest statusRequest;
//   // Archive archive = Archive(Get.find());
  
//   OrdersPending ordersPending = OrdersPending(Get.find());
//   Myservices myservices = Get.find();


//   changeType(String visit) {
// if (visit == "0") {
//   return "frist visit";
// } else if (visit == "1") {
//   return "second visit";
// }
// }

//   getOrders() async {
//     data.clear();
//     statusRequest = StatusRequest.loading; // for  loading
//     update();
//     var response = await ordersPending.getData(); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         List responsedata = response['data'];
//         data.addAll(responsedata.map((e) => OrdersModel.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }

//     update(); // update ui
//   }



//   referhOrder() {
//     getOrders();
//   }

//   deletOrders(String ordersid) async {
//     // data.clear();
//     statusRequest = StatusRequest.loading; // for  loading
//     var response = await ordersPending.removeOrder(
//         ordersid); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         Get.rawSnackbar(title: "note", messageText: Text("sucess to remove "));
//         referhOrder();
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
//     update();
//   }
//   //=======================

// editation(String ordersid , String ordersdoctoredate ) async {
//     // data.clear();
//     statusRequest = StatusRequest.loading; // for  loading
//     var response = await ordersPending.edite(
//         ordersid, ordersdoctoredate); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         Get.rawSnackbar(title: "note", messageText: Text("sucess to approve and edition"));
//         referhOrder();
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
    
//     update();
//   }
// //============================

// gotoapprove(String ordersid) async {
//     // data.clear();
//     statusRequest = StatusRequest.loading; // for  loading
//     var response = await ordersPending.changeToapprove(
//         ordersid); // getData for test_data page == it post data to url test

//     print("**************** $response");
//     statusRequest = handdlingData(
//         response); // it give statusrequest error or statusrequest sucess

//     if (StatusRequest.success == statusRequest) {
//       if (response['status'] == "success") {
//         Get.rawSnackbar(title: "note", messageText: Text("sucess to approve"));
//         referhOrder();
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//     }
    
//     update();
//   }
 
//   @override
//   void onInit() {
//   getOrders();

//     super.onInit();
//   }
// }
