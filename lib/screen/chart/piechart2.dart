
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

import '../../controller/setting_controller.dart';
import '../../core/constant/color.dart';
import 'indicatore.dart';




class PieChartSample3 extends StatelessWidget {
  const PieChartSample3({super.key});

  @override
  Widget build(BuildContext context) {
          SettingController controller = Get.put(SettingController());
    return 
    GetBuilder<SettingController>(builder: (controller) =>
      
       AspectRatio(
      aspectRatio: 1.3,
      child: Row(
        children: <Widget>[
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: controller.changer2
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 60,
                  sections:controller. showingSections2(),
                ),
              ),
            ),
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            const  Indicator(
                color: ColorAPP.contentColorBlue,
                text: 'Car Service',
                isSquare: true,
              ),
             const SizedBox(
                height: 4,
              ),
              Indicator(
                color: ColorAPP.contentColorYellow,
                text: 'Car Washing',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: ColorAPP.contentColorPurple,
                text: 'Wheel',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: ColorAPP.contentColorGreen,
                text: 'AC',
                isSquare: true,
              ),
              
               Indicator(
                color: ColorAPP.contentColorRed,
                text: 'Battery',
                isSquare: true,
              ),
              Indicator(
                color: ColorAPP.contentColorOrange,
                text: 'Buke',
                isSquare: true,
              ),
              Indicator(
                color: ColorAPP.contentColorWhite,
                text: 'Glass',
                isSquare: true,
              ),
              Indicator(
                color: ColorAPP.contentColorBlack,
                text: 'oil',
                isSquare: true,
              ),
              Indicator(
                color: ColorAPP.contentColorPink,
                text: 'paint',
                isSquare: true,
              ),
              SizedBox(height:60,)
            ],
          ),
          const SizedBox(
            width: 28,
          ),
         
        ],
      ),
    )
    );
  }
}