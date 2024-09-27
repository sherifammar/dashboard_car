import 'package:flutter/material.dart';
import 'package:get/get.dart';




import '../../../../controller/orders/orderspendingcontroller.dart';
import '../../../../model.dart/ordersmodel.dart';


import '../../../data/remote/orders/orderspending_data.dart';

class CardpendingOrders extends GetView< OrdersPending> {
  final OrdersModel ordersModel;
  const CardpendingOrders({super.key, required this.ordersModel});

  @override
  Widget build(BuildContext context) {
     OrderPendingController controller = Get.put(OrderPendingController());

    return Card(

      elevation: 10,
      child: Container(
       
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(
              "client:   ${ordersModel.usersName}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Car number:   ${ordersModel.autmoblieCarnumber}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Brand:   ${ordersModel.autmoblieBrand}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Car type:   ${ordersModel.autmoblieTypecar}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              " Booking Date:   ${ordersModel.ordersBookingdate}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
         Text(
              " Booking time:   ${ordersModel.ordersBookingtime}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
              Text(
              " Record Date:   ${ordersModel.ordersRecordedate}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          controller.editationWithdate(ordersModel.ordersId!);
                        },
                        child: const Text("Edit"),
                      ),
                    ),
                    SizedBox(width: 5,),
                     Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                       child: MaterialButton(
                                       onPressed: () async {
                                         DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: controller.dateTime,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                                         if (newDate == null) return;
                                         TimeOfDay? newTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay(
                              hour: controller.dateTime.hour,
                              minute: controller.dateTime.minute));
                                         if (newTime == null) return;
                                         final newDateTime = DateTime(
                        newDate.year,
                        newDate.month,
                        newDate.day,
                        // newTime.hour,
                        // newTime.minute,
                                         );
                                         controller. choosetpeBookingdate(newDateTime.toString());
                                        
                     
                                         print(newDateTime.toString());
                                       },
                                       child:const Text("Another Date"),
                                     ),
                     ),
                       SizedBox(width: 5,),
                        Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                       child: MaterialButton(
                        onPressed: () {
                          controller.editation(ordersModel.ordersId!,ordersModel.ordersBookingdate!);
                        },
                       child: const Text("Approve"),
                                     ),
                     ),
                       SizedBox(width: 5,),
                Container(
                   decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                  child: MaterialButton(
                    
                    onPressed: () {
                      controller.deletOrders(ordersModel.ordersId!);
                    },
                    child: const Text("Delete"),
                  ),
                ),
                     
                  ],
                ),
               
               
               
                //  Row(
                //   // crossAxisAlignment: CrossAxisAlignment.stretch,
                //    children: [
                //      Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         color: Colors.green,
                //       ),
                //        child: MaterialButton(
                //         onPressed: () {
                //           controller.editation(ordersModel.ordersId!,ordersModel.ordersBookingdate!);
                //         },
                //        child: const Text("Approve"),
                //                      ),
                //      ),
                // Container(
                //    decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         color: Colors.red,
                //       ),
                //   child: MaterialButton(
                    
                //     onPressed: () {
                //       controller.deletOrders(ordersModel.ordersId!);
                //     },
                //     child: const Text("Delete"),
                //   ),
                // ),
                //    ],
                //  ),
                 
              ],
            )
          ],
        ),
      ),
    );
  }
}
