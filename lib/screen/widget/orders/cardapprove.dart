// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:jiffy/jiffy.dart';



// import '../../../../controller/orders/orderspendingcontroller.dart';

// import '../../../controller/orders/ordersapprove_controller.dart';


// class CardapproveOrders extends GetView<OrderPendingController> {
//   final OrdersModel ordersModel;
//   const CardapproveOrders({super.key, required this.ordersModel});

//   @override
//   Widget build(BuildContext context) {
//   OrdersApprovecontroller controller = Get.put(OrdersApprovecontroller());

//     return
//      Card(
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
//                   " Booking date :   ",
//                   style: TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
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
//               const   Text(
//                   "Doctore Date :   ",
//                   style:  TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                Text(
//                   '${DateFormat.yMMMEd().format(DateFormat("yyyy-MM-dd").parse(ordersModel.ordersDoctoreDate!))}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
              
//               ],
//             ),
//                Row(
//               children: [
//               const   Text(
//                  "Type of visit:   ",
//                   style:  TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                Text(
//                   '${ordersModel.ordersType!}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
              
//               ],
//             ),
//                Row(
//               children: [
//               const   Text(
//                  "Number of visit:   ",
//                   style:  TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                Text(
//                   '${controller.changeType(ordersModel.ordersFristbook!)}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
              
//               ],
//             ),
//               Row(
//                   children: [
//                     IconButton(onPressed: () {controller.gotoapprove( ordersModel.ordersId!);}, icon: const Icon(Icons.approval),),
//                      IconButton(onPressed: () {controller.deletOrders( ordersModel.ordersId!);}, icon: const Icon(Icons.delete_outline),),
                     

//                   ],
//                 )
//           ],
//         ),
//       ),
//     );
//   }
// }
