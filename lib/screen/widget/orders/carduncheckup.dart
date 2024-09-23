import 'package:flutter/material.dart';
import 'package:get/get.dart';




import '../../../../controller/orders/orderspendingcontroller.dart';
import '../../../../model.dart/ordersmodel.dart';


import '../../../controller/orders/undercheckup_controller.dart';
import '../../../controller/orders/underfixcontroller.dart';
import '../../../data/remote/orders/orderspending_data.dart';

class Cardundercheskup extends GetView<Undercheckupcontroller> {
  final OrdersModel ordersModel;
  const Cardundercheskup({super.key, required this.ordersModel});

  @override
  Widget build(BuildContext context) {
     Undercheckupcontroller controller = Get.put(Undercheckupcontroller());

    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.uppdatefixtocheckup(ordersModel.ordersId!);
                      },
                      icon: const Icon(Icons.approval),
                    ),
                     IconButton(
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
                  icon: const Icon(Icons.date_range),
                ),
                  ],
                ),
               
               
               
           
                 
              ],
            )
          ],
        ),
      ),
    );
  }
}
