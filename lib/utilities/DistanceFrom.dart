import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistanceFrom extends StatelessWidget {
  const DistanceFrom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DISTANCE FROM",
            style: TextStyle(
                fontSize: Get.height * .03, fontWeight: FontWeight.w500),
          ),
          const Divider(
            color: Color.fromARGB(255, 221, 220, 220),
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Location",
                  style: TextStyle(fontSize: Get.height * .03),
                ),
                Row(
                  children: [
                    Text(
                      "City Center",
                      style: TextStyle(fontSize: Get.height * .03),
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 221, 220, 220),
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
