import 'package:dashboard_car/core/constant/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/orders/orderspendingcontroller.dart';
import '../widget/orders/cardlpendingorders.dart';

class Orderspending extends StatelessWidget {
  const Orderspending({super.key});

  @override
  Widget build(BuildContext context) {
    OrderPendingController  controller = Get.put(OrderPendingController());

    return
     Scaffold(
        appBar: AppBar(
          backgroundColor:  ColorAPP.contentColorBlue,
          title:const Text("Pending Orders",style: TextStyle(color: ColorAPP.black,fontSize: 30),),
          centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<OrderPendingController >(
              builder: (controller) => ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) => Dismissible(
                        key: UniqueKey(),
                        // direction: DismissDirection.startToEnd,
                        onDismissed: (direction) {
                          
                       controller.deletOrders(controller.data[index].ordersId!);
                        },
                        child:
                            Column(
                              children: [
                              const  SizedBox(height: 12,),
                                     
                                CardpendingOrders(ordersModel: controller.data[index]),
                              ],
                            ),
                      ))),
        )
        );
  }
}
