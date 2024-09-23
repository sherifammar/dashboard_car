import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/constant/apptheme.dart';
import '../../core/constant/imageasset.dart';
import '../../core/services/servives.dart';
import '../controller/setting_controller.dart';
import '../core/constant/color.dart';
import '../core/constant/nameroutes.dart';
import '../core/function/validinput.dart';
import '../core/shared/textformglobal.dart';
import 'chart/piecgart1.dart';
import 'chart/piechart2.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    SettingController controller = Get.put(SettingController());
    return GetBuilder<SettingController>(
        builder: (controller) => Scaffold(
              body: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1.0)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                "category Under work",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorAPP.contentColorBlack,
                                    fontSize: 30),
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(width: 1.0)),
                              child: PieChartSample3()),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Orders under work",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorAPP.contentColorBlack,
                                    fontSize: 30),
                              ),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(width: 1.0)),
                              child: PieChartSample2()),
                          const SizedBox(
                            height: 10,
                          ),
                          //===================
                          GridView(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3, mainAxisExtent: 80),

                            physics:
                                NeverScrollableScrollPhysics(), // remove error listview , gridleview

                            shrinkWrap: true,
                            children: [
                              InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorAPP.contentColorBlue,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: MaterialButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoutes.orderpending);
                                    },
                                    child: Text(
                                        "Under Approve ${controller.countdisapprove}"),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: ColorAPP.contentColorYellow,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                       Get.toNamed(AppRoutes.approve);
                                    },
                                    child: Text(
                                        "Under Inspect ${controller.countinspect}"),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorAPP.contentColorPurple,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: MaterialButton(
                                    onPressed: () {
                                        Get.toNamed(AppRoutes.underfix);
                                    },
                                    child: Text(
                                        "  Under Fix  ${controller.countfix}"),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ColorAPP.contentColorGreen,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: MaterialButton(
                                    onPressed: () {

                                             Get.toNamed(AppRoutes.uncheckup);
                                    },
                                    child: Text(
                                        "Under checkup ${controller.countcheckup}"),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: ColorAPP.contentColorRed,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                      
                                             Get.toNamed(AppRoutes.underfinish);
                                    },
                                    child: Text(
                                      "Under finish ${controller.countfinish},",
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: ColorAPP.contentColorBlack,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: MaterialButton(
                                    onPressed: () {
                                       Get.toNamed(AppRoutes.underdelivery);
                                    },
                                    child: Text(
                                      "Delivery    ${controller.countdelivery}",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //==========================
                        ],
                      ))
                ],
              ),
              // appBar: AppBar(
              //   actions: [
              //     IconButton(
              //         onPressed: () {
              //           controller.logout();
              //         },
              //         icon: Icon(Icons.logout))
              //   ],
              //   title: const Text("Setting",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)), centerTitle: true,),

              // body: SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 30,
              //       ),
              //       Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Column(
              //             children: [
              //               const Text(
              //                 "Totat Visit",
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(
              //                 height: 5,
              //               ),
              //               Container(
              //                   decoration: BoxDecoration(
              //                       color: Color.fromARGB(255, 238, 221, 221),
              //                       borderRadius: BorderRadius.circular(10)),
              //                   width: 70,
              //                   height: 70,
              //                   child: Center(
              //                       child: Text("${controller.totalorders}"))),
              //             ],
              //           ),
              //           SizedBox(
              //             width: 10,
              //           ),
              //           Column(
              //             children: [
              //               const Text(
              //                 "Total Diagnose",
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(
              //                 height: 5,
              //               ),
              //               Container(
              //                   decoration: BoxDecoration(
              //                       color: Color.fromARGB(255, 238, 221, 221),
              //                       borderRadius: BorderRadius.circular(10)),
              //                   width: 70,
              //                   height: 70,
              //                   child: Center(
              //                       child: Text("${controller.countdiagnose}"))),
              //             ],
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Column(
              //             children: [
              //               const Text(
              //                 "Total consult",
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(
              //                 height: 5,
              //               ),
              //               Container(
              //                   decoration: BoxDecoration(
              //                       color: Color.fromARGB(255, 238, 221, 221),
              //                       borderRadius: BorderRadius.circular(10)),
              //                   width: 70,
              //                   height: 70,
              //                   child: Center(
              //                       child: Text("${controller.countconstution}"))),
              //             ],
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Column(
              //             children: [
              //               const Text(
              //                 "Total Frist Visit",
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ),
              //               const SizedBox(
              //                 height: 5,
              //               ),
              //               Container(
              //                   decoration: BoxDecoration(
              //                       color: Color.fromARGB(255, 238, 221, 221),
              //                       borderRadius: BorderRadius.circular(10)),
              //                   width: 70,
              //                   height: 70,
              //                   child: Center(
              //                       child:
              //                           Text("${controller.totalfristbooking}"))),
              //             ],
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         height: 30,
              //       ),
              //       Row(
              //           crossAxisAlignment: CrossAxisAlignment.center,
              //           mainAxisAlignment: MainAxisAlignment.center,
              //           children: [
              //             ElevatedButton(
              //                 onPressed: () {
              //                   controller.getcountitemscart("diagnose",
              //                       controller.formattedDate.toString());
              //                   print(controller.formattedDate.toString());
              //                 },
              //                 child: const Text(
              //                  " Now day ",
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                   ),
              //                 )),
              //             const SizedBox(
              //               width: 20,
              //             ),
              //             ElevatedButton(
              //                 onPressed: () async {
              //                   DateTime? newDate = await showDatePicker(
              //                       context: context,
              //                       initialDate: controller.dateTime,
              //                       firstDate: DateTime(2000),
              //                       lastDate: DateTime(2100));
              //                   if (newDate == null) return;
              //                   TimeOfDay? newTime = await showTimePicker(
              //                       context: context,
              //                       initialTime: TimeOfDay(
              //                           hour: controller.dateTime.hour,
              //                           minute: controller.dateTime.minute));
              //                   if (newTime == null) return;
              //                   final newDateTime = DateTime(
              //                     newDate.year,
              //                     newDate.month,
              //                     newDate.day,
              //                     // newTime.hour,
              //                     // newTime.minute,
              //                   );
              //                   controller.getcountitemscart(
              //                     "diagnose",
              //                     newDateTime.toString(),
              //                   );

              //                   print(newDateTime.toString());
              //                 },
              //                 child: const Text("Select Date")),
              //           ]),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //      const Divider(thickness: 1),
              //       Container(
              //         padding: const EdgeInsets.all(15),
              //         child: Column(
              //           children: [
              //            const Text("Home Page Setting",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              //              const SizedBox(
              //         height: 15,
              //       ),
              //             CustomTextformglobal(
              //               hinttext: controller.settingname,
              //               isNumber: false,
              //               labeltext: "name",
              //               mycontroller: controller.name,
              //               valid: (val) {
              //                 return validinput(val!, 1, 30, "");
              //               },
              //               iconData: Icons.person_outlined,
              //             ),
              //             const SizedBox(
              //               height: 15,
              //             ),
              //             CustomTextformglobal(
              //               hinttext:controller.settingtitle,
              //               isNumber: false,
              //               labeltext: "title",
              //               mycontroller: controller.title,
              //               valid: (val) {
              //                 return validinput(val!, 1, 30, "");
              //               },
              //               iconData: Icons.title_outlined,
              //             ),
              //             const SizedBox(
              //               height: 15,
              //             ),
              //             CustomTextformglobal(
              //               hinttext: controller.settingaddress.toString(),
              //               isNumber: false,
              //               labeltext: "address",
              //               mycontroller: controller.address,
              //               valid: (val) {
              //                 return validinput(val!, 1, 30, "");
              //               },
              //               iconData: Icons.location_on_outlined,
              //             ),
              //             const SizedBox(
              //               height: 15,
              //             ),
              //             CustomTextformglobal(
              //               hinttext: controller.settingdates.toString(),
              //               isNumber: false,
              //               labeltext: "date",
              //               mycontroller: controller.dates,
              //               valid: (val) {
              //                 return validinput(val!, 1, 30, "");
              //               },
              //               iconData: Icons.calendar_month_outlined,
              //             ),
              //             const SizedBox(
              //               height: 15,
              //             ),
              //             CustomTextformglobal(
              //               hinttext: controller.settingtime.toString(),
              //               isNumber: false,
              //               labeltext: "time",
              //               mycontroller: controller.time,
              //               valid: (val) {
              //                 return validinput(val!, 1, 30, "");
              //               },
              //               iconData: Icons.timer_outlined,
              //             ),
              //              const SizedBox(
              //               height: 15,
              //             ),
              //              ElevatedButton(

              //                 onPressed: () {
              //               controller.editedata();
              //                 },
              //                 child: const Text(
              //                   "edit",
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                   ),
              //                 )),
              //           ],
              //         ),
              //       )
              //     ],
              //   ),
              // )
            ));
    // can not use scafold +> using container is part of page
  }
}
