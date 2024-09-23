import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/orders/underdeliveryfinishController.dart';
import '../../controller/orders/underfinish_controller.dart';
import '../../controller/orders/underfixcontroller.dart';

import '../widget/orders/cardunderdelivery.dart';
import '../widget/orders/cardunderfinish.dart';
import '../widget/orders/cardunfix.dart';

class Underdelivery extends StatelessWidget {
  const Underdelivery({super.key});

  @override
  Widget build(BuildContext context) {
    UnderdeliveryfinishController   controller = Get.put(UnderdeliveryfinishController ());

    return
     Scaffold(
        appBar: AppBar(
          title:const Text("under fix Orders",style: TextStyle(color: Colors.white,fontSize: 20),),
          centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<UnderdeliveryfinishController >(
              builder: (controller) => ListView.builder(
                  itemCount: controller.archiveData.length,
                  itemBuilder: (context, index) => 
                     
                            Column(
                              children: [
                              const  SizedBox(height: 12,),
                                      Text(" number : ${index+1}",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),),
                               Cardunderdelivery (ordersModel: controller.archiveData[index]),
                              ],
                            ),
                      )),
        )
        );
  }
}
