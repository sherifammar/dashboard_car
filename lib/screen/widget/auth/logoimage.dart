import 'package:flutter/material.dart';

import '../../../core/constant/imageasset.dart';
class Imageauth extends StatelessWidget {
  const Imageauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(ImageAsset.pageimage,height: 180,width: 200,);// error in size on page=>soved by add height
  }
}