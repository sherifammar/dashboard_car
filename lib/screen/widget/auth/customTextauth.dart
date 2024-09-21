import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomTextauth extends StatelessWidget {
   final String text;//error solved add final
  const CustomTextauth({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            textAlign: TextAlign.center,
             style:const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          );
  }
}