import 'package:assignment/controller/Sort_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SortByBottomSheetWidget extends StatefulWidget {
  const SortByBottomSheetWidget({super.key});

  @override
  State<SortByBottomSheetWidget> createState() =>
      _SortByBottomSheetWidgetState();
}

final SortController sortController = Get.put(SortController());

class _SortByBottomSheetWidgetState extends State<SortByBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(Get.width * .04),
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
              Container(),
              Text(
                "Sort By",
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
        Container(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .02),
          child: Column(children: [
            listTile("Our Recommendations", 0),
            divider(),
            listTile("Rating & Recommended", 1),
            divider(),
            listTile("Price & Recommended", 2),
            divider(),
            listTile("Distance & Recommended", 3),
            divider(),
            listTile("Rating Only", 4),
            divider(),
            listTile("Price Only", 5),
            divider(),
            listTile("Distance Only", 6),
            divider(),
          ]),
        )
      ],
    );
  }
}

Widget listTile(String text, int index) {
  return Obx(() => ListTile(
        title: Text(
          text,
          style: TextStyle(fontSize: Get.height * .035),
        ),
        trailing: sortController.selectedTileIndex.value == index
            ? const Icon(Icons.check, color: Colors.blue)
            : null,
        onTap: () {
          sortController.selectedTileIndex.value = index;
        },
      ));
}

Widget divider() {
  return Divider(
    indent: Get.width * .04,
    color: const Color.fromARGB(255, 221, 220, 220),
    thickness: 1,
  );
}
