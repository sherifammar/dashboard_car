import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../core/class/StatusRequest.dart';
import '../core/constant/color.dart';
import '../core/constant/nameroutes.dart';
import '../core/function/handlingdatacontroller.dart';
import '../core/services/servives.dart';
import '../data/remote/setting_data.dart';
import 'package:fl_chart/fl_chart.dart';

class SettingController extends GetxController {
  Myservices myservices = Get.find();
  StatusRequest statusRequest = StatusRequest.none;
  late TextEditingController address;
  late TextEditingController name;
  late TextEditingController title;
  late TextEditingController dates;
  late TextEditingController time;
  DateTime dateTime = DateTime.now();
  String formattedDate =
      DateFormat('yyyy-MM-dd 00:00:00.000').format(DateTime.now());

  logout() {
    //   //  =========================
    myservices.sharedPreferences.clear();
    Get.defaultDialog(
      title: "warn",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      middleText: "Do You Want Exit from APP",
      onCancel: () {},
      onConfirm: () {
        Get.offAllNamed(AppRoutes.login);
      },
    );
  }

  SettingData countdata = SettingData(Get.find());
  double countdisapprove = 0;
  double countinspect = 0;
  double countfix = 0;
  double countcheckup = 0;
  double countfinish = 0;
  double countdelivery = 0;

  int touchedIndex = -1;
  int touchedIndex2 = -1;

  double countcarservice = 0;
  double countcaewashing = 0;
  double countwheel = 0;
  double countac = 0;
  double countbattery = 0;
  double countbruke = 0;
  double countglass = 0;
  double countoiling = 0;
  double countpaint = 0;

  FlTouchEvent? event;
  PieTouchResponse? pieTouchResponse;

  FlTouchEvent? event2;
  PieTouchResponse? pieTouchResponse2;

  changer(FlTouchEvent event, pieTouchResponse) {
    if (!event.isInterestedForInteractions ||
        pieTouchResponse == null ||
        pieTouchResponse.touchedSection == null) {
      touchedIndex = -1;
      return;
    }
    touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
    update();
  }

  changer2(FlTouchEvent event2, pieTouchResponse2) {
    if (!event2.isInterestedForInteractions ||
        pieTouchResponse2 == null ||
        pieTouchResponse2.touchedSection == null) {
      touchedIndex2 = -1;
      return;
    }
    touchedIndex2 = pieTouchResponse2.touchedSection!.touchedSectionIndex;
    update();
  }

  getcountitemscart() async {
    statusRequest = StatusRequest.loading; // for  loading
    var response = await countdata
        .getCountData(); // getData for test_data page == it post data to url test

    print("**************** $response");
    statusRequest = handdlingData(
        response); // it give statusrequest error or statusrequest sucess

    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        countdisapprove = double.parse(response["data"]);
        print(" count of disaaprove :  => $countdisapprove");

        countinspect = double.parse(response["data1"]);
        print(" count of inspect:  => $countinspect");

        countfix = double.parse(response["data2"]);
        print(" count of fix:  => $countfix ");

        countcheckup = double.parse(response["data3"]);
        print(" count of checkup :  => $countcheckup ");

        countfinish = double.parse(response["data4"]);
        print(" count of finish :  => $countfinish");

        countdelivery = double.parse(response["data14"]);
        print(" count of delivery :  => $countdelivery");
        //================================

        countcarservice = double.parse(response["data5"]);
        print(" count of carservice :  => $countcarservice");

        countcaewashing = double.parse(response["data6"]);
        print(" count of caewashing :  => $countcaewashing");

        countwheel = double.parse(response["data7"]);
        print(" count of wheel :  => $countwheel");

        countac = double.parse(response["data8"]);
        print(" count of ac :  => $countac");

        countbattery = double.parse(response["data9"]);
        print(" count of battery :  => $countbattery");

        countbruke = double.parse(response["data10"]);
        print(" count of bruke :  => $countbruke");

        countglass = double.parse(response["data11"]);
        print(" count of glass :  => $countglass");

        countoiling = double.parse(response["data12"]);
        print(" count of oiling :  => $countoiling");

        countpaint = double.parse(response["data13"]);
        print(" count of paint :  => $countpaint");

        update();

        // return countdiagnose ;
      } else {
        statusRequest = StatusRequest.failure;
      }
      update();
    }
  }

//=================================

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: ColorAPP.contentColorBlue,
            value: countdisapprove,
            title: '${countdisapprove.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: ColorAPP.contentColorYellow,
            value: countinspect,
            title: '${countinspect.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: ColorAPP.contentColorPurple,
            value: countfix,
            title: '${countfix.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: ColorAPP.contentColorGreen,
            value: countcheckup,
            title: '${countcheckup.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: ColorAPP.contentColorRed,
            value: countfinish,
            title: '${countfinish.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 5:
          return PieChartSectionData(
            color: ColorAPP.contentColorBlack,
            value: countdelivery,
            title: '${countdelivery.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }

//===========================
  List<PieChartSectionData> showingSections2() {
    return List.generate(9, (i) {
      final isTouched = i == touchedIndex2;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: ColorAPP.contentColorBlue,
            value: countcarservice,
            title: '${countcarservice.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: ColorAPP.contentColorYellow,
            value: countcaewashing,
            title: '${countcaewashing.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 2:
          return PieChartSectionData(
            color: ColorAPP.contentColorPurple,
            value: countwheel,
            title: '${countwheel.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 3:
          return PieChartSectionData(
            color: ColorAPP.contentColorGreen,
            value: countac,
            title: '${countac.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 4:
          return PieChartSectionData(
            color: ColorAPP.contentColorRed,
            value: countbattery,
            title: '${countbattery.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        //==================
        case 5:
          return PieChartSectionData(
            color: ColorAPP.contentColorOrange,
            value: countbruke,
            title: '${countbruke.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 6:
          return PieChartSectionData(
            color: ColorAPP.contentColorWhite,
            value: countglass,
            title: '${countglass.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 7:
          return PieChartSectionData(
            color: ColorAPP.contentColorBlack,
            value: countoiling,
            title: '${countoiling.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 8:
          return PieChartSectionData(
            color: ColorAPP.contentColorPink,
            value: countpaint,
            title: '${countpaint.toString()}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: ColorAPP.mainTextColor1,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }

  @override
  void onInit() {
    getcountitemscart();

    // getSettingdata();
    // name = TextEditingController();
    // address = TextEditingController();
    // title = TextEditingController();
    // dates = TextEditingController();
    // time = TextEditingController();
    // name.text = settingname;
    // address.text = settingaddress;
    // title.text = settingtitle;
    // dates.text = settingdates;
    // time.text = settingtime;

    super.onInit();
  }

  @override
  void dispose() {
    // name.dispose();
    // address.dispose();
    // title.dispose();
    // dates.dispose();
    // time.dispose();
    super.dispose();
  }
}
