import 'package:assignment/controller/slidercontroller.dart';
import 'package:assignment/screen/hotelInfoCard.dart';
import 'package:assignment/utilities/DistanceFrom.dart';
import 'package:assignment/utilities/ratingWidget.dart';
import 'package:assignment/utilities/starWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class filterBottomSheet extends StatefulWidget {
  const filterBottomSheet({super.key});

  @override
  State<filterBottomSheet> createState() => _filterBottomSheetState();
}

class _filterBottomSheetState extends State<filterBottomSheet> {
  final Slidercontroller slidecontroller = Get.put(Slidercontroller());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Get.width * .03),
          height: Get.height * .1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Get.width * .04),
                  topRight: Radius.circular(Get.width * .04)),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 221, 221, 225),
                  spreadRadius: 2.0,
                )
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reset",
                style: TextStyle(
                    fontSize: Get.height * .04,
                    color: Colors.grey,
                    decoration: TextDecoration.underline),
              ),
              Text(
                "Filters",
                style: TextStyle(
                  fontSize: Get.height * .04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: FaIcon(FontAwesomeIcons.xmark))
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(
            Get.width * .03,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price Per Night",
                style: TextStyle(
                    fontSize: Get.height * .03, fontWeight: FontWeight.bold),
              ),
              Container(
                  height: Get.height * .07,
                  width: Get.width * .15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                  child: Center(
                    child: Obx(() => Text(
                        slidecontroller.value.value.round().toString() +
                            "+\$")),
                  ))
            ],
          ),
        ),
        Column(
          children: [
            Obx(() => SliderTheme(
                data: const SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                    thumbColor: Colors.white),
                child: Slider(
                  min: slidecontroller.min.value,
                  max: slidecontroller.max.value,
                  value: slidecontroller.value.value,
                  onChanged: (value) {
                    slidecontroller.value.value = value;
                  },
                ))),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * .03),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("\$" + "20"), Text("\$" + "540" + "+")],
              ),
            )
          ],
        ),
        SizedBox(
          height: Get.height * .02,
        ),
        ratingWidget(),
        SizedBox(
          height: Get.height * .03,
        ),
        starWidget(),
        SizedBox(
          height: Get.height * .03,
        ),
        DistanceFrom(),
        Container(
            padding: EdgeInsets.symmetric(
                horizontal: Get.width * .1, vertical: Get.width * .03),
            width: Get.width,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 220, 220, 227),
                offset: Offset(1.0, 0.0),
                blurRadius: 1,
              ),
              BoxShadow(
                color: Color.fromARGB(255, 221, 221, 225),
                offset: Offset(0.0, 0.0),
                blurRadius: 10,
                spreadRadius: 1.0,
              )
            ]),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Show Reslut",
                style: TextStyle(fontSize: Get.width * .04),
              ),
            )),
      ],
    );
  }
}
