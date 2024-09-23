import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/orders/undercheckup_controller.dart';
import '../../controller/orders/underfixcontroller.dart';

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
          title:const Text("under fix Orders",style: TextStyle(color: Colors.white,fontSize: 20),),
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
                                      Text(" number : ${index+1}",style:const TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize: 20),),
                               Cardundercheskup(ordersModel: controller.data[index]),
                              ],
                            ),
                      )),
        )
        );
  }
}
