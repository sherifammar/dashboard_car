import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/orders/approveorderscontroller.dart';

import '../../controller/orders/inspectcontroller.dart';
import '../../core/class/handingdataview.dart';
import '../../core/constant/color.dart';
import '../widget/orders/cardapprove.dart';
import '../widget/orders/cardlpendingorders.dart';

class InspectOrders extends StatelessWidget {
  const InspectOrders({super.key});

  @override
  Widget build(BuildContext context) {
    Inspectcontroller controller = Get.put(Inspectcontroller());
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  ColorAPP.contentColorYellow,
          title: const Text("Inspect Orders",style: TextStyle(color: Colors.white,fontSize: 30 ),),
           centerTitle: true,
        ),
        body: Container(
          child: GetBuilder<Inspectcontroller>
          
          (
              builder: (controller) =>
               HandingDataView(statusRequest: controller.statusRequest, widget:
               Column(children: [

                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                              controller:controller.inspect ,
                              decoration: InputDecoration(
                  labelText: 'Enter inspect',
                  border: OutlineInputBorder(),
                              ),
                            ),
                ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                  width: 150,
                  height: 70,
                  padding: const EdgeInsets.all(10),
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
                      color: ColorAPP.contentColorYellow,
                  child: Text("date" , style: TextStyle(color: Colors.black , fontSize: 30),),
                  ),
            ),
              Container(
                 width: 150,
                  height: 70,
                  padding: const EdgeInsets.all(10),
              child: MaterialButton(onPressed: () {
               controller.gotoapprove(); 
              },
              color: ColorAPP.contentColorYellow,
              child: Text("edit", style: TextStyle(color: Colors.black , fontSize: 30),),
              ),
            )
               ],
             ),
          
               ],)
           
              )
              
             
                  ),
        ));
  }
}