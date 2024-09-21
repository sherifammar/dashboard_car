// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:jiffy/jiffy.dart';

// import '../../../../controller/orders/archiveorderscontroller.dart';
// import '../../../../core/constant/color.dart';
// import '../../../../core/constant/nameroutes.dart';
// import '../../../../model.dart/ordersmodel.dart';



// class CardOrdersListArchive extends 
//  GetView<OrdersArchiveController>
//  {
//   final OrdersModel listdata;

//   const CardOrdersListArchive({Key? key, required this.listdata})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//   Get.put(OrdersArchiveController());
//     return   Card(
//       child: Container(
//         padding: const EdgeInsets.all(10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Name:   ${listdata.ordersUsername}",
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 const Text(
//                   "Booking date :   ",
//                   style: TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   Jiffy('${listdata.ordersBookingdate}', "yy-MM-dd")
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
//                   "Doctore date :   ",
//                   style:  TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                Text(
//                   '${DateFormat.yMMMEd().format(DateFormat("yyyy-MM-dd").parse(listdata.ordersDoctoreDate!))}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//                          Row(
//               children: [
//               const   Text(
//                   "Type of visit:   ",
//                   style:  TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                Text(
//                   '${listdata.ordersType!}',
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
//                   '${controller.changeType(listdata.ordersFristbook!)}',
//                   style: const TextStyle(
//                       fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
              
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
    
//     ;
//   }
// }