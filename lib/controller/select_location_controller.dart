import 'package:wemap_store_app/imports.dart';

class SelectLocationController extends GetxController {
  var location = ''.obs;
  var length = 0.obs;

  var locationList = List<Locationn>().obs;

  @override
  void onInit() {
    fetchLocationList();
    super.onInit();
  }

  fetchLocationList() async {
    locationList.value = Get.find<UserController>().user.value.locations;
  }

  saveLocationList(List<Locationn> newLocationList) {
    print("save");
    locationList.value = [];
    locationList.value = newLocationList;
  }

  saveLocation(String newLocation) {
    location.value = newLocation;
  }

  setLength(int lengthh) {
    length.value = lengthh;
  }

  clear() {
    location.value = '';
  }
}
