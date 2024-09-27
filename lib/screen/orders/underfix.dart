import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/orders/underfixcontroller.dart';

import '../../core/constant/color.dart';
import '../widget/orders/cardunfix.dart';

class Underfix extends StatelessWidget {
  const Underfix({super.key});

  @override
  Widget build(BuildContext context) {
    Underfixcontroller  controller = Get.put(Underfixcontroller());

    return
     Scaffold(
        appBar: AppBar(
          backgroundColor:  ColorAPP.contentColorPurple,
          title:const Text("under fix Orders",style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<Underfixcontroller>(
              builder: (controller) => ListView.builder(
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) => 
                     
                            Column(
                              children: [
                              const  SizedBox(height: 12,),
                                      
                               Cardunderfix(ordersModel: controller.data[index]),
                              ],
                            ),
                      )),
        )
        );
  }
}
