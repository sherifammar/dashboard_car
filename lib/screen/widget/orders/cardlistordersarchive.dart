import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';


import '../../../../core/constant/color.dart';
import '../../../../core/constant/nameroutes.dart';
import '../../../../model.dart/ordersmodel.dart';
import '../../../controller/orders/archivecontroller.dart';



class CardOrdersListArchive extends 
 GetView<Archivecontroller>
 {
  final OrdersModel listdata;

  const CardOrdersListArchive({Key? key, required this.listdata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
  Get.put(Archivecontroller());
    return   Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "client:   ${listdata.usersName}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Car number:   ${listdata.autmoblieCarnumber}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Brand:   ${listdata.autmoblieBrand}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Car type:   ${listdata.autmoblieTypecar}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              " Booking Date:   ${listdata.ordersBookingdate}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
         Text(
              " Booking time:   ${listdata.ordersBookingtime}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
              Text(
              " Record Date:   ${listdata.ordersRecordedate}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
              
              ],
            ),
          
        ),
      
    );
    
    ;
  }
}