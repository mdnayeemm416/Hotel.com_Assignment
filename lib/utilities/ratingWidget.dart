import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ratingWidget extends StatelessWidget {
  const ratingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "RATING",
            style: TextStyle(
                fontSize: Get.height * .03, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: Get.height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              rating(Colors.red.shade900, "0+"),
              rating(Colors.amber.shade800, "7+"),
              rating(Colors.green, "7.5+"),
              rating(Colors.green.shade800, "8+"),
              rating(Colors.green.shade900, "8.5+")
            ],
          )
        ],
      ),
    );
  }
}

Widget rating(color, text) {
  return Container(
    height: Get.height * .085,
    width: Get.width * .13,
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(Get.width * .02)),
    child: Center(
        child: Text(
      text,
      style: TextStyle(color: Colors.white),
    )),
  );
}
