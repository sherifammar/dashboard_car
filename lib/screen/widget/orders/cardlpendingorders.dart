// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:jiffy/jiffy.dart';
// import 'package:url_launcher/url_launcher.dart';


// import '../../../../controller/orders/archiveorderscontroller.dart';
// import '../../../../controller/orders/orderspendingcontroller.dart';
// import '../../../../model.dart/ordersmodel.dart';
// import 'package:jiffy/jiffy.dart';

// class CardpendingOrders extends GetView<OrderPendingController> {
//   final OrdersModel ordersModel;
//   const CardpendingOrders({super.key, required this.ordersModel});

//   @override
//   Widget build(BuildContext context) {
//     OrderPendingController controller = Get.put(OrderPendingController());

//     return Card(
//       child: Container(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Name:   ${ordersModel.ordersUsername}",
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 const Text(
//                   "Booking date :   ",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   Jiffy('${ordersModel.ordersBookingdate}', "yy-MM-dd")
//                       .fromNow(),
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 const Text(
//                  "Doctor date :   ",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '${DateFormat.yMMMEd().format(DateFormat("yyyy-MM-dd").parse(ordersModel.ordersDoctoreDate!))}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 const Text(
//                   "Type of visit:   ",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '${ordersModel.ordersType}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 const Text(
//                   "Number of visit:   ",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   '${controller.changeType(ordersModel.ordersFristbook!)}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     controller.gotoapprove(ordersModel.ordersId!);
//                   },
//                   icon: const Icon(Icons.approval),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     controller.deletOrders(ordersModel.ordersId!);
//                   },
//                   icon: const Icon(Icons.delete_outline),
//                 ),
//                 IconButton(
//                   onPressed: () async {
//                     await launchUrl(
//                         Uri.parse("tel:${ordersModel.ordersUsersphone}"));
//                   },
//                   icon: const Icon(Icons.phone),
//                 ),
//                 IconButton(
//                   onPressed: () async {
//                     DateTime? newDate = await showDatePicker(
//                         context: context,
//                         initialDate: controller.dateTime,
//                         firstDate: DateTime(2000),
//                         lastDate: DateTime(2100));
//                     if (newDate == null) return;
//                     TimeOfDay? newTime = await showTimePicker(
//                         context: context,
//                         initialTime: TimeOfDay(
//                             hour: controller.dateTime.hour,
//                             minute: controller.dateTime.minute));
//                     if (newTime == null) return;
//                     final newDateTime = DateTime(
//                       newDate.year,
//                       newDate.month,
//                       newDate.day,
//                       // newTime.hour,
//                       // newTime.minute,
//                     );
//                     controller.editation(
//                         ordersModel.ordersId!, newDateTime.toString());

//                     print(newDateTime.toString());
//                   },
//                   icon: const Icon(Icons.edit),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
