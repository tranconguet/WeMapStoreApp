import 'package:wemap_store_app/imports.dart';
import 'package:wemapgl/wemapgl.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var info;
  getInfo({String address, int distance}) {
    Get.find<SelectLocationController>().saveLocation(address);
    Get.find<SelectLocationController>().setLength(distance);
    // print('alooooo' + info["distance"].toString() + info["address"]);
  }

  @override
  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;
//    _panelOpened = size.height - MediaQuery.of(context).padding.top;
    return WeMapDirection(
      originIcon: "assets/symbols/origin.png",
      destinationIcon: "assets/symbols/destination.png",
      originPlace: WeMapPlace(
          location: LatLng(21.038238, 105.78270800000001),
          description:
              "Trường Đại học Công nghệ, Đại học Quốc gia Hà Nội, số 144 Xuân Thủy, Cầu Giấy, Hà Nội"),
      selectLocation: getInfo,
    );
  }
}
