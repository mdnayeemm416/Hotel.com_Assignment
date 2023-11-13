import 'package:assignment/utilities/hotelClassWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class starWidget extends StatelessWidget {
  const starWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "HOTEL CLASS",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: Get.height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HotelClassWidget(star: [OneStar()]),
              HotelClassWidget(star: [TwoStar()]),
              HotelClassWidget(star: [OneStar(), TwoStar()]),
              HotelClassWidget(star: [TwoStar(), TwoStar()]),
              HotelClassWidget(star: [TwoStar(), OneStar(), TwoStar()])
            ],
          )
        ],
      ),
    );
  }
}

Widget OneStar() {
  return Icon(
    Icons.star,
    size: Get.height * .025,
    color: Colors.amber.shade400,
  );
}

Widget TwoStar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        Icons.star,
        size: Get.height * .025,
        color: Colors.amber.shade400,
      ),
      Icon(
        Icons.star,
        size: Get.height * .025,
        color: Colors.amber.shade400,
      ),
    ],
  );
}
