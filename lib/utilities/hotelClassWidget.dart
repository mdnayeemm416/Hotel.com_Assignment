// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelClassWidget extends StatelessWidget {
  final List<Widget> star;
  const HotelClassWidget({
    Key? key,
    required this.star,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .085,
      width: Get.width * .13,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.amber.shade400),
          borderRadius: BorderRadius.circular(Get.width * .02)),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          // direction: Axis.vertical,
          children: [
            ...star
          ]),
    );
  }
}
 