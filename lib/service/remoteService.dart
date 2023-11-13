import 'package:assignment/models/hotelModel.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<HotelInfo>> fetchProducts() async {
    var response =
        await client.get(Uri.parse('https://www.hotelsgo.co/test/hotels'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return hotelInfoFromJson(jsonString);
    } else {
      return [];
    }
  }
}
