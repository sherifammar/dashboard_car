
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

import '../../controller/setting_controller.dart';
import '../../core/constant/color.dart';
import 'indicatore.dart';

// class PieChartSample2 extends StatefulWidget {
//   const PieChartSample2({super.key});

//   @override
//   State<StatefulWidget> createState() => PieChart2State();
// }

// class PieChart2State extends State {
//   int touchedIndex = -1;

//   @override
//   Widget build(BuildContext context) {
//       SettingController controller = Get.put(SettingController());
//     return GetBuilder<SettingController>(builder: (controller) {
       
//      AspectRatio(
//       aspectRatio: 1.3,
//       child: Row(
//         children: <Widget>[
//           const SizedBox(
//             height: 18,
//           ),
//           Expanded(
//             child: AspectRatio(
//               aspectRatio: 1,
//               child: PieChart(
//                 PieChartData(
//                   pieTouchData: PieTouchData(
//                     touchCallback: (FlTouchEvent event, pieTouchResponse) {
//                       setState(() {
//                         if (!event.isInterestedForInteractions ||
//                             pieTouchResponse == null ||
//                             pieTouchResponse.touchedSection == null) {
//                           touchedIndex = -1;
//                           return;
//                         }
//                         touchedIndex = pieTouchResponse
//                             .touchedSection!.touchedSectionIndex;
//                       }
//                       );
//                     },
//                   ),
//                   borderData: FlBorderData(
//                     show: false,
//                   ),
//                   sectionsSpace: 0,
//                   centerSpaceRadius: 40,
//                   sections: showingSections(),
//                 ),
//               ),
//             ),
//           ),
//            Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Indicator(
//                 color: ColorAPP.contentColorBlue,
//                 text: 'First',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Indicator(
//                 color: ColorAPP.contentColorYellow,
//                 text: 'Second',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Indicator(
//                 color: ColorAPP.contentColorPurple,
//                 text: 'Third',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 4,
//               ),
//               Indicator(
//                 color: ColorAPP.contentColorGreen,
//                 text: 'Fourth',
//                 isSquare: true,
//               ),
//               SizedBox(
//                 height: 18,
//               ),
//             ],
//           ),
//           const SizedBox(
//             width: 28,
//           ),
//         ],
//       ),
//     );
      
//     },);
    
   
//   }

//   List<PieChartSectionData> showingSections() {
//     return List.generate(4, (i) {
//       final isTouched = i == touchedIndex;
//       final fontSize = isTouched ? 25.0 : 16.0;
//       final radius = isTouched ? 60.0 : 50.0;
//       const shadows = [Shadow(color: Colors.black, blurRadius: 2)];
//       switch (i) {
//         case 0:
//           return PieChartSectionData(
//             color: ColorAPP.contentColorBlue,
//             value: 40,
//             title: '40%',
//             radius: radius,
//             titleStyle: TextStyle(
//               fontSize: fontSize,
//               fontWeight: FontWeight.bold,
//               color: ColorAPP.mainTextColor1,
//               shadows: shadows,
//             ),
//           );
//         case 1:
//           return PieChartSectionData(
//             color: ColorAPP.contentColorYellow,
//             value: 30,
//             title: '30%',
//             radius: radius,
//             titleStyle: TextStyle(
//               fontSize: fontSize,
//               fontWeight: FontWeight.bold,
//               color: ColorAPP.mainTextColor1,
//               shadows: shadows,
//             ),
//           );
//         case 2:
//           return PieChartSectionData(
//             color: ColorAPP.contentColorPurple,
//             value: 15,
//             title: '15%',
//             radius: radius,
//             titleStyle: TextStyle(
//               fontSize: fontSize,
//               fontWeight: FontWeight.bold,
//               color: ColorAPP.mainTextColor1,
//               shadows: shadows,
//             ),
//           );
//         case 3:
//           return PieChartSectionData(
//             color: ColorAPP.contentColorGreen,
//             value: 15,
//             title: '15%',
//             radius: radius,
//             titleStyle: TextStyle(
//               fontSize: fontSize,
//               fontWeight: FontWeight.bold,
//               color: ColorAPP.mainTextColor1,
//               shadows: shadows,
//             ),
//           );
//         default:
//           throw Error();
//       }
//     });
//   }
// }



class PieChartSample2 extends StatelessWidget {
  const PieChartSample2({super.key});

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
                    touchCallback: controller.changer
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 60,
                  sections:controller. showingSections(),
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
                text: 'Under Approve',
                isSquare: true,
              ),
             const SizedBox(
                height: 4,
              ),
              Indicator(
                color: ColorAPP.contentColorYellow,
                text: 'Under Inspect',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: ColorAPP.contentColorPurple,
                text: 'Under Fix',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: ColorAPP.contentColorGreen,
                text: 'Under Checkup',
                isSquare: true,
              ),
              
               Indicator(
                color: ColorAPP.contentColorRed,
                text: 'Under finish',
                isSquare: true,
              ),
               Indicator(
                color: ColorAPP.contentColorBlack,
                text: 'Delivery',
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