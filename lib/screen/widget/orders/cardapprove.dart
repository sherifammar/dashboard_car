import 'package:dashboard_car/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';



import '../../../../controller/orders/orderspendingcontroller.dart';
import '../../../controller/orders/approveorderscontroller.dart';
import '../../../model.dart/ordersmodel.dart';




class CardapproveOrders extends GetView<OrderPendingController> {
  final OrdersModel ordersModel;
  const CardapproveOrders({super.key, required this.ordersModel});

  @override
  Widget build(BuildContext context) {
  Approveorderscontroller controller = Get.put(Approveorderscontroller());

    return
     Card(
      elevation: 10,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2.0),

        ),
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 2.0),
                        color: ColorAPP.contentColorYellow
                      ),
                      child:MaterialButton(
                        child: const Text("Approve"),
                        onPressed: () {
                                 controller.Gotoinspect(ordersModel.ordersId!);
                        }
                        
                      )
                       )

               
                    
                     

                  ],
                )
          ],
        ),
      ),
    );
  }
}
