import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/orders/underfinish_controller.dart';
import '../../controller/orders/underfixcontroller.dart';

import '../../core/constant/color.dart';
import '../widget/orders/cardunderfinish.dart';
import '../widget/orders/cardunfix.dart';

class Underfinish extends StatelessWidget {
  const Underfinish({super.key});

  @override
  Widget build(BuildContext context) {
    Underfinishcontroller   controller = Get.put(Underfinishcontroller ());

    return
     Scaffold(
        appBar: AppBar(
          backgroundColor:  ColorAPP.contentColorRed,
          title:const Text("under finish  Orders",style: TextStyle(color: Colors.white,fontSize: 20),),
          centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<Underfinishcontroller >(
              builder: (controller) => ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) => 
                     
                            Column(
                              children: [
                              const  SizedBox(height: 12,),
                                   
                               Cardunderfinish (ordersModel: controller.data[index]),
                              ],
                            ),
                      )),
        )
        );
  }
}
