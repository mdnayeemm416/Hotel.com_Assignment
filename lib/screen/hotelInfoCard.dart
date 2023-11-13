import 'package:assignment/controller/Hotel_controller.dart';
import 'package:assignment/screen/SortByBottomSheet.dart';
import 'package:assignment/screen/filterBottomSheet.dart';
import 'package:assignment/widgets/cardDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HotelNameCard extends StatefulWidget {
  const HotelNameCard({super.key});

  @override
  State<HotelNameCard> createState() => _HotelNameCardState();
}

final HotelInfoController hotelInfoController = Get.put(HotelInfoController());

class _HotelNameCardState extends State<HotelNameCard> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: Width * .1),
                height: Height * .15,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 220, 220, 227),
                        offset: Offset(1.0, 1.0),
                        blurRadius: 0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 221, 221, 225),
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15,
                        spreadRadius: 1.0,
                      )
                    ]),
                child: Container())),
        Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(
                height: 600,
                width: double.infinity,
                child: Obx(
                  () => ListView.builder(
                      itemCount: hotelInfoController.HotelInfoList.length,
                      itemBuilder: (context, index) {
                        return CardDetails(
                          Height: Height,
                          index: index,
                          hotelInfo: hotelInfoController.HotelInfoList[index],
                        );
                      }),
                ))),
        Positioned(
            top: 0,
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: Width * .1),
              height: Height * .15,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 220, 220, 227),
                      offset: Offset(1.0, 1.0),
                      blurRadius: 0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(255, 221, 221, 225),
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0),
                            ),
                          ),
                          isScrollControlled: true,
                          isDismissible: false,
                          context: context,
                          builder: (_) {
                            return filterBottomSheet();
                          });
                    },
                    child: Container(
                      child: const Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.sliders,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Filter",
                            style: TextStyle(fontSize: 22, color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.0),
                            ),
                          ),
                          isDismissible: false,
                          isScrollControlled: true,
                          context: context,
                          builder: (_) {
                            return const SortByBottomSheetWidget();
                          });
                    },
                    child: const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.arrowDownWideShort,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sort",
                          style: TextStyle(fontSize: 22, color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    ));
  }
}
