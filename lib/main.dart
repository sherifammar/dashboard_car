



import 'package:dashboard_car/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'binding/intialbinding.dart';

import 'core/services/servives.dart';
// import 'router.dart' as router;

import 'package:flutter/material.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Doctor App',
//       theme: ThemeData(
//         fontFamily: "Nunito",
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: Builder(builder: (context) {
//         SizeConfig.initSize(context);
//         return DoctorScreen();
//       }),
//     );
//   }
// }


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // at start run app
  await inititalServices(); // error add asyn after main // initialservices from service and make shareperence
   
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  
    return GetMaterialApp(
   // can translation langauge (hve eng word and arabic word)
      debugShowCheckedModeBanner: false,
      // connect to controller of language
    
      // theme: maincontroller.appTheme,
      // darkTheme:maincontroller.changeMode(), // solve err in size font
            // home: const Test(),
      // home: const DOC(),
      theme: ThemeData(
        fontFamily: "Nunito",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: routes,
      initialBinding: InitialBindings(),
      // routes: routes, // error solved =>routes name of map
    );
  }
}