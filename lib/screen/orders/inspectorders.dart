import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/orders/approveorderscontroller.dart';

import '../../controller/orders/inspectcontroller.dart';
import '../../core/class/handingdataview.dart';
import '../widget/orders/cardapprove.dart';
import '../widget/orders/cardlpendingorders.dart';

class InspectOrders extends StatelessWidget {
  const InspectOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Inspectcontroller controller = Get.put(Inspectcontroller());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inspect Orders",style: TextStyle(color: Colors.white,fontSize: 20),),
           centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<Inspectcontroller>
          
          (
              builder: (controller) =>
               HandingDataView(statusRequest: controller.statusRequest, widget:
               Column(children: [

                TextField(
              controller:controller.inspect ,
              decoration: InputDecoration(
                labelText: 'Enter inspect',
                border: OutlineInputBorder(),
              ),
            ),
             Container(
              child: MaterialButton(onPressed: 
             () async {
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
                  }
              ,
              color: Color.fromARGB(255, 248, 161, 155),
              child: Text("date"),
              ),
            ),
            Container(
              child: MaterialButton(onPressed: () {
               controller.gotoapprove(); 
              },
              color: Color.fromARGB(255, 248, 161, 155),
              child: Text("edit"),
              ),
            )
               ],)
           
              )
              
             
                  ),
        ));
  }
}