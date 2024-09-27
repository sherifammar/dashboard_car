import 'package:dashboard_car/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/orders/approveorderscontroller.dart';

import '../../core/class/handingdataview.dart';
import '../widget/orders/cardapprove.dart';
import '../widget/orders/cardlpendingorders.dart';

class ApproveOrders extends StatelessWidget {
  const ApproveOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Approveorderscontroller controller = Get.put(Approveorderscontroller());
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  ColorAPP.contentColorYellow,
          title: const Text("Approve Orders",style: TextStyle(color: ColorAPP.black,fontSize: 30),
          ),
           centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<Approveorderscontroller>
          
          (
              builder: (controller) =>
               HandingDataView(statusRequest: controller.statusRequest, widget:
               ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) =>
                        Column(
                          children: [
                         const   SizedBox(height: 10,),
                          
                            SizedBox(height: 10,),
                            CardapproveOrders(ordersModel: controller.data[index]),
                          ],
                        ),
                  )
              )
              
             
                  ),
        ));
  }
}
