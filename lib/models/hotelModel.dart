// To parse this JSON data, do
//
//     final hotelInfo = hotelInfoFromJson(jsonString);

import 'dart:convert';

List<HotelInfo> hotelInfoFromJson(String str) => List<HotelInfo>.from(json.decode(str).map((x) => HotelInfo.fromJson(x)));

String hotelInfoToJson(List<HotelInfo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HotelInfo {
    String name;
    int starts;
    int price;
    String currency;
    String image;
    double reviewScore;
    String review;
    String address;

    HotelInfo({
        required this.name,
        required this.starts,
        required this.price,
        required this.currency,
        required this.image,
        required this.reviewScore,
        required this.review,
        required this.address,
    });

    factory HotelInfo.fromJson(Map<String, dynamic> json) => HotelInfo(
        name: json["name"],
        starts: json["starts"],
        price: json["price"],
        currency: json["currency"],
        image: json["image"],
        reviewScore: json["review_score"]?.toDouble(),
        review: json["review"],
        address: json["address"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "starts": starts,
        "price": price,
        "currency": currency,
        "image": image,
        "review_score": reviewScore,
        "review": review,
        "address": address,
    };
}
