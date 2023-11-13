import 'package:assignment/models/hotelModel.dart';
import 'package:assignment/service/remoteService.dart';
import 'package:get/get.dart';

class HotelInfoController extends GetxController {
  var HotelInfoList = <HotelInfo>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fatchHotelInfo();
    super.onInit();
  }

  void fatchHotelInfo() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        HotelInfoList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
