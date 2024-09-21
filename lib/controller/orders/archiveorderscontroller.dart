
// import 'package:get/get.dart';


// import '../../core/class/StatusRequest.dart';

// import '../../core/function/handlingdatacontroller.dart';
// import '../../core/services/servives.dart';
// import '../../data/remote/orders/archive_data.dart';
// import '../../model.dart/ordersmodel.dart';


// class OrdersArchiveController extends GetxController {
// ArchiveData ordersArchiveData = ArchiveData(Get.find());

//   List<OrdersModel> archiveData = [];

//   late StatusRequest statusRequest;

//   Myservices myServices = Get.find();
// changeType(String visit) {
// if (visit == "0") {
//   return "frist visit";
// } else if (visit == "1") {
//   return "second visit";
// }
// }

//   getOrders() async {
//     archiveData.clear();
//     statusRequest = StatusRequest.loading;
//     update();
//     var response = await ordersArchiveData
//         .getarchiveData();
//     print("=============================== Controller $response ");
//     statusRequest = handdlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         List listdata = response['data'];
//        archiveData.addAll(listdata.map((e) => OrdersModel.fromJson(e)));
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//     update();
//   }

//  @override
//   void onInit() {
// getOrders();

//     super.onInit();
//   }

// // =================================
  
// }
 

 