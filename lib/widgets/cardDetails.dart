import 'package:assignment/models/hotelModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDetails extends StatelessWidget {
  final HotelInfo hotelInfo;
  final double Height;
  final index;
  CardDetails(
      {super.key,
      required this.Height,
      required this.index,
      required this.hotelInfo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * .03),
      height: Height * .65,
      width: Get.width * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 220, 220, 227),
              offset: Offset(4.0, 4.0),
              blurRadius: 10,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Color.fromARGB(255, 221, 221, 225),
              offset: Offset(-4.0, -4.0),
              blurRadius: 10,
              spreadRadius: 1.0,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: Height * .25,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(hotelInfo.image))),
              child: Container(
                margin: EdgeInsets.only(top: 15, right: 15),
                child: const Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.white,
                  ),
                ),
              )),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: Get.width * .22,
                      child: ListView.builder(
                        itemCount: hotelInfo.starts,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.grey,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Hotel",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Text(
                  hotelInfo.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      height: 25,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 1, 86, 4)),
                      child: Center(
                          child: Text(
                        hotelInfo.reviewScore.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      hotelInfo.review,
                      style: TextStyle(color: Colors.green.shade900),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.green.shade900,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      hotelInfo.address,
                      style: TextStyle(color: Colors.green.shade900),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 90,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        "Our Lowest Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 6, 59, 9)),
                      )),
                    ),
                    Text(
                      "\$" + hotelInfo.price.toString(),
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Renaissance")
                  ],
                ),
                const Row(
                  children: [
                    Text(
                      "View Deal",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: const Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "More Prices",
                style: TextStyle(
                    fontSize: 18, decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}
