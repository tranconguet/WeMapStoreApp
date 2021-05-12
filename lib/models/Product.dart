import 'dart:convert';

List<Product> productsFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productsToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product(
      {this.images,
      this.id,
      this.title,
      this.description,
      this.price,
      this.type,
      this.love,
      this.rating});

  List<String> images;
  String id;
  String title;
  String description;
  String price;
  String type;
  bool love;
  int rating;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
      images: List<String>.from(json["images"].map((x) => x)),
      id: json["_id"],
      title: json["title"],
      description: json["description"],
      price: json["price"],
      type: json["type"],
      love: json["love"],
      rating: json["rating"]);

  Map<String, dynamic> toJson() => {
        "images": List<dynamic>.from(images.map((x) => x)),
        "_id": id,
        "title": title,
        "description": description,
        "price": price,
        "type": type,
        "love": love,
        "rating": rating
      };
}

const String description =
    "Chiếc điện thoại iPhone 12 Pro Max 256 GB là mẫu smartphone sở hữu nhiều tính năng nổi bật với hệ thống camera chất lượng, hiệu năng vượt trội hay hỗ trợ kết nối 5G hứa hẹn sẽ là mẫu sản phẩm mang lại cảm giác trải nghiệm tối ưu cho người dùng.";

List<String> productTypeList = [
  'Phone',
  'Watch',
  'Accessories',
  'Tablet',
  'Laptop'
];
List<Product> demoProducts = [
  Product(
    title: "Điện thoại iPhone 12 Pro Max 256GB",
    description: description,
    images: [
      "assets/images/phone/ip12_0.jpg",
      "assets/images/phone/ip12_1.jpg",
      "assets/images/phone/ip12_2.jpg",
      "assets/images/phone/ip12_3.jpg",
      "assets/images/phone/ip12_4.jpg",
      "assets/images/phone/ip12_5.jpg",
    ],
    price: "35.990.000₫",
    type: "Phone",
    rating: 2,
    love: true,
  ),
  Product(
    title: "Điện thoại OPPO A15s",
    description: description,
    images: [
      "assets/images/phone/oppo_a15s_0.jpg",
      "assets/images/phone/oppo_a15s_1.jpg",
      "assets/images/phone/oppo_a15s_2.jpg",
      "assets/images/phone/oppo_a15s_3.jpg",
      "assets/images/phone/oppo_a15s_4.jpg",
      "assets/images/phone/oppo_a15s_5.jpg",
    ],
    price: "35.990.000₫",
    type: "Phone",
    rating: 2,
    love: false,
  ),
  Product(
    title: "Điện thoại iPhone 12 Pro Max 256GB",
    description: description,
    images: [
      "assets/images/phone/ss_galaxy_note10_0.jpg",
      "assets/images/phone/ss_galaxy_note10_1.jpg",
      "assets/images/phone/ss_galaxy_note10_2.jpg",
      "assets/images/phone/ss_galaxy_note10_3.jpg",
      "assets/images/phone/ss_galaxy_note10_4.jpg",
      "assets/images/phone/ss_galaxy_note10_5.jpg",
    ],
    price: "35.990.000₫",
    type: "Phone",
    rating: 2,
    love: true,
  ),
  Product(
    title: "Điện thoại iPhone 12 Pro Max 256GB",
    description: description,
    images: [
      "assets/images/phone/ip12_0.jpg",
      "assets/images/phone/ip12_1.jpg",
      "assets/images/phone/ip12_2.jpg",
      "assets/images/phone/ip12_3.jpg",
      "assets/images/phone/ip12_4.jpg",
      "assets/images/phone/ip12_5.jpg",
    ],
    price: "35.990.000₫",
    type: "Phone",
    rating: 2,
    love: false,
  ),
  Product(
    title:
        "Laptop Acer Aspire 3 A315 54K 37B0 i3 8130U/4GB/256GB/Win10 (NX.HEESV.00D)",
    description: description,
    images: [
      "assets/images/laptop/acer-aspire-3-a315-nx-heesv-00d-0.jpg",
      "assets/images/laptop/acer-aspire-3-a315-nx-heesv-00d-1.jpg",
      "assets/images/laptop/acer-aspire-3-a315-nx-heesv-00d-2.jpg",
      "assets/images/laptop/acer-aspire-3-a315-nx-heesv-00d-3.jpg",
      "assets/images/laptop/acer-aspire-3-a315-nx-heesv-00d-4.jpg",
    ],
    price: "9.490.000₫",
    type: "Laptop",
    rating: 2,
    love: true,
  ),
  Product(
    title:
        "Laptop Lenovo IdeaPad S340 14IIL i3 1005G1/8GB/512GB/Win10 (81VV003VVN)",
    description: description,
    images: [
      "assets/images/laptop/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-0.jpg",
      "assets/images/laptop/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-1.jpg",
      "assets/images/laptop/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-2.jpg",
      "assets/images/laptop/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-3.jpg",
      "assets/images/laptop/lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-4.jpg",
    ],
    price: "12.090.000₫",
    type: "Laptop",
    rating: 4,
    love: true,
  ),
  Product(
    title:
        "Laptop HP Envy 13 aq1057TX i7 10510U/8GB/512GB/2GB MX250/Win10 (8XS68PA)",
    description: description,
    images: [
      "assets/images/laptop/hp-envy-13-i7-8xs68pa-0.jpg",
      "assets/images/laptop/hp-envy-13-i7-8xs68pa-1.jpg",
      "assets/images/laptop/hp-envy-13-i7-8xs68pa-2.jpg",
      "assets/images/laptop/hp-envy-13-i7-8xs68pa-3.jpg",
      "assets/images/laptop/hp-envy-13-i7-8xs68pa-4.jpg",
    ],
    price: "29.290.000₫",
    type: "Laptop",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Laptop Apple MacBook Air M1 2020 8GB/256GB (MGN93SA/A)",
    description: description,
    images: [
      "assets/images/laptop/sliver-0.jpg",
      "assets/images/laptop/sliver-1.jpg",
      "assets/images/laptop/sliver-2.jpg",
      "assets/images/laptop/sliver-3.jpg",
      "assets/images/laptop/sliver-4.jpg",
    ],
    price: "28.990.000₫",
    type: "Laptop",
    rating: 2,
    love: true,
  ),
  Product(
    title: "Máy tính bảng Huawei MatePad T10s (Nền tảng Huawei Mobile Service)",
    description: description,
    images: [
      "assets/images/tablet/huawei-matepad-t10s-0.jpg",
      "assets/images/tablet/huawei-matepad-t10s-1.jpg",
      "assets/images/tablet/huawei-matepad-t10s-2.jpg",
      "assets/images/tablet/huawei-matepad-t10s-3.jpg",
      "assets/images/tablet/huawei-matepad-t10s-4.jpg",
    ],
    price: "5.190.000₫",
    type: "Tablet",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)",
    description: description,
    images: [
      "assets/images/tablet/ipad-pro-12-9-inch-wifi-cellular-128gb-2020-0.jpg",
      "assets/images/tablet/ipad-pro-12-9-inch-wifi-cellular-128gb-2020-1.jpg",
      "assets/images/tablet/ipad-pro-12-9-inch-wifi-cellular-128gb-2020-2.jpg",
      "assets/images/tablet/ipad-pro-12-9-inch-wifi-cellular-128gb-2020-3.jpg",
      "assets/images/tablet/ipad-pro-12-9-inch-wifi-cellular-128gb-2020-4.jpg",
    ],
    price: "31.690.000₫",
    type: "Tablet",
    rating: 2,
    love: true,
  ),
  Product(
    title: "Máy tính bảng Lenovo Tab M10",
    description: description,
    images: [
      "assets/images/tablet/lenovo-tab-m10-0.jpg",
      "assets/images/tablet/lenovo-tab-m10-1.jpg",
      "assets/images/tablet/lenovo-tab-m10-2.jpg",
      "assets/images/tablet/lenovo-tab-m10-3.jpg",
      "assets/images/tablet/lenovo-tab-m10-4.jpg",
    ],
    price: "31.690.000₫",
    type: "Tablet",
    rating: 5,
    love: true,
  ),
  Product(
    title: "Máy tính bảng Samsung Galaxy Tab A8 8\" T295 (2019)",
    description: description,
    images: [
      "assets/images/tablet/samsung-galaxy-tab-a8-t295-2019-bac-0.jpg",
      "assets/images/tablet/samsung-galaxy-tab-a8-t295-2019-bac-1.jpg",
      "assets/images/tablet/samsung-galaxy-tab-a8-t295-2019-bac-2.jpg",
      "assets/images/tablet/samsung-galaxy-tab-a8-t295-2019-bac-3.jpg",
      "assets/images/tablet/samsung-galaxy-tab-a8-t295-2019-bac-4.jpg",
    ],
    price: "3.690.000₫",
    type: "Tablet",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Cáp 3 đầu Lightning Type C Micro 1m Xmobile DR002 Đen",
    description: description,
    images: [
      "assets/images/accessories/cap-3-dau-lightning-type-c-micro-1m-xmobile-dr002-0.jpg",
      "assets/images/accessories/cap-3-dau-lightning-type-c-micro-1m-xmobile-dr002-1.jpg",
      "assets/images/accessories/cap-3-dau-lightning-type-c-micro-1m-xmobile-dr002-2.jpg",
      "assets/images/accessories/cap-3-dau-lightning-type-c-micro-1m-xmobile-dr002-3.jpg",
      "assets/images/accessories/cap-3-dau-lightning-type-c-micro-1m-xmobile-dr002-4.jpg",
    ],
    price: "220.000₫",
    type: "Accessories",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Loa Bluetooth MozardX BM01 Đen",
    description: description,
    images: [
      "assets/images/accessories/loa-bluetooth-mozardx-bm01-den-up-0.jpg",
      "assets/images/accessories/loa-bluetooth-mozardx-bm01-den-up-1.jpg",
      "assets/images/accessories/loa-bluetooth-mozardx-bm01-den-up-2.jpg",
      "assets/images/accessories/loa-bluetooth-mozardx-bm01-den-up-3.jpg",
      "assets/images/accessories/loa-bluetooth-mozardx-bm01-den-up-4.jpg",
    ],
    price: "1.200.000₫",
    type: "Accessories",
    rating: 2,
    love: true,
  ),
  Product(
    title:
        "Pin sạc dự phòng Polymer 10.000mAh Lightning eValu PJ JP189SL Trắng",
    description: description,
    images: [
      "assets/images/accessories/sac-du-phong-10000mah-lightning-evalu-pj-jp189sl-0.jpg",
      "assets/images/accessories/sac-du-phong-10000mah-lightning-evalu-pj-jp189sl-1.jpg",
      "assets/images/accessories/sac-du-phong-10000mah-lightning-evalu-pj-jp189sl-2.jpg",
      "assets/images/accessories/sac-du-phong-10000mah-lightning-evalu-pj-jp189sl-3.jpg",
      "assets/images/accessories/sac-du-phong-10000mah-lightning-evalu-pj-jp189sl-4.jpg",
    ],
    price: "390.000₫",
    type: "Accessories",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Tai nghe Bluetooth True Wireless Mozard DT920 Đen",
    description: description,
    images: [
      "assets/images/accessories/tai-nghe-bluetooth-true-wireless-mozard-dt920-den-0.jpg",
      "assets/images/accessories/tai-nghe-bluetooth-true-wireless-mozard-dt920-den-1.jpg",
      "assets/images/accessories/tai-nghe-bluetooth-true-wireless-mozard-dt920-den-2.jpg",
      "assets/images/accessories/tai-nghe-bluetooth-true-wireless-mozard-dt920-den-3.jpg",
      "assets/images/accessories/tai-nghe-bluetooth-true-wireless-mozard-dt920-den-4.jpg",
    ],
    price: "570.000₫",
    type: "Accessories",
    rating: 4,
    love: true,
  ),
  Product(
    title: "Apple Watch S5 44mm viền nhôm dây cao su đen",
    description: description,
    images: [
      "assets/images/watch/apple-watch-s5-44mm-vien-nhom-day-cao-su-0.jpg",
      "assets/images/watch/apple-watch-s5-44mm-vien-nhom-day-cao-su-1.jpg",
    ],
    price: "12.990.000₫",
    type: "Watch",
    rating: 4,
    love: true,
  ),
  Product(
    title: "Đồng hồ Nam Mathey Tissot H411BPI",
    description: description,
    images: [
      "assets/images/watch/mathey-tissot-h411bpi-nam-0.jpg",
      "assets/images/watch/mathey-tissot-h411bpi-nam-1.jpg",
      "assets/images/watch/mathey-tissot-h411bpi-nam-2.jpg",
      "assets/images/watch/mathey-tissot-h411bpi-nam-3.jpg",
      "assets/images/watch/mathey-tissot-h411bpi-nam-4.jpg",
    ],
    price: "5.243.000₫",
    type: "Watch",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Đồng hồ Nam Orient RA-AG0003S10B - Cơ tự động",
    description: description,
    images: [
      "assets/images/watch/orient-ra-ag0003s10b-nam-co-tu-dong-0.jpg",
      "assets/images/watch/orient-ra-ag0003s10b-nam-co-tu-dong-1.jpg",
      "assets/images/watch/orient-ra-ag0003s10b-nam-co-tu-dong-2.jpg",
      "assets/images/watch/orient-ra-ag0003s10b-nam-co-tu-dong-3.jpg",
      "assets/images/watch/orient-ra-ag0003s10b-nam-co-tu-dong-4.jpg",
    ],
    price: "6.876.000₫",
    type: "Watch",
    rating: 3,
    love: true,
  ),
  Product(
    title: "Samsung Galaxy Watch 3 45mm viền thép đen dây da",
    description: description,
    images: [
      "assets/images/watch/samsung-galaxy-watch-3-45mm-den-0.jpg",
      "assets/images/watch/samsung-galaxy-watch-3-45mm-den-1.jpg",
      "assets/images/watch/samsung-galaxy-watch-3-45mm-den-2.jpg",
      "assets/images/watch/samsung-galaxy-watch-3-45mm-den-3.jpg",
      "assets/images/watch/samsung-galaxy-watch-3-45mm-den-4.jpg",
    ],
    price: "8.490.000₫",
    type: "Watch",
    rating: 5,
    love: true,
  ),
];
