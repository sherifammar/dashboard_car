import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/orders/undercheckup_controller.dart';
import '../../controller/orders/underfixcontroller.dart';

import '../../core/constant/color.dart';
import '../widget/orders/carduncheckup.dart';
import '../widget/orders/cardunfix.dart';

class Undercheckup extends StatelessWidget {
  const Undercheckup({super.key});

  @override
  Widget build(BuildContext context) {
    Undercheckupcontroller  controller = Get.put(Undercheckupcontroller());

    return
     Scaffold(
        appBar: AppBar(
          backgroundColor:  ColorAPP.contentColorGreen,
          title:const Text("under Checkup Orders",style: TextStyle(color: Colors.white,fontSize: 20),),
          centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<Undercheckupcontroller>(
              builder: (controller) => ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) => 
                     
                            Column(
                              children: [
                              const  SizedBox(height: 12,),
                                     
                               Cardundercheskup(ordersModel: controller.data[index]),
                              ],
                            ),
                      )),
        )
        );
  }
}
