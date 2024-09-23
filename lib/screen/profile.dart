
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constant/apptheme.dart';
import '../../core/constant/imageasset.dart';
import '../../core/services/servives.dart';
import '../controller/profile_controller.dart';
import '../controller/setting_controller.dart';
import '../core/constant/color.dart';
import '../core/constant/nameroutes.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return 
    GetBuilder<ProfileController>(builder: (controller) =>    Container(
      child: ListView(
        children: [
         
        const  SizedBox(height: 55),
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
              
                ListTile(
                  onTap: () {
                    Get.toNamed(AppRoutes.archive);
                  },
                  title: const Text("Archive"),
                  trailing:const  Icon(Icons.save_as_rounded),
                ),
              
               const Divider(),
               
               const SizedBox(
                  height: 5,
                ),
              const  Divider(),
                ListTile(
                  onTap: () {},
                  title:const Text("About us"),
                  trailing:const Icon(Icons.help_outline_rounded),
                ),
               const SizedBox(
                  height: 5,
                ),
               const Divider(),
                ListTile(
                  onTap: () async {
                    await launchUrl(Uri.parse("tel:+201062575511"));
                  },
                  title:const Text("Conact us"),
                  trailing: const  Icon(Icons.phone_callback_outlined),
                ),
               const SizedBox(
                  height: 5,
                ),
               const Divider(),
                ListTile(
                  onTap: () {
                    controller.logout();
                  },
                  title:const Text("Logout"),
                  trailing: const Icon(Icons.exit_to_app),
                ),
              ]),
            ),
          )
        ],
      ),
    ));
 // can not use scafold +> using container is part of page
  }
}
