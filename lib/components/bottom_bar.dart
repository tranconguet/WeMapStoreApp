import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/cart/cart_screen.dart';
import 'package:store_app/screens/home/home_screen.dart';
import 'package:store_app/screens/message/message_screen.dart';
import 'package:store_app/screens/profile/profile_screen.dart';
import 'package:store_app/screens/settings/settings_screen.dart';

import '../size_config.dart';

class BottomBar extends PreferredSize {
  final String selectedRoute;
  BottomBar({
    @required this.selectedRoute,
    Key key,
  });
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.blueGrey[200]),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            getProportionateScreenWidth(10),
            getProportionateScreenWidth(10),
            getProportionateScreenWidth(10),
            getProportionateScreenWidth(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Item(
                selectedRoute: selectedRoute,
                routeName: HomeScreen.routeName,
                icon: "assets/icons/vhome.svg",
              ),
              Item(
                selectedRoute: selectedRoute,
                routeName: MessageScreen.routeName,
                icon: "assets/icons/vmessenger.svg",
              ),
              Item(
                selectedRoute: selectedRoute,
                routeName: CartScreen.routeName,
                icon: "assets/icons/vcart.svg",
              ),
              Item(
                selectedRoute: selectedRoute,
                routeName: ProfileScreen.routeName,
                icon: "assets/icons/vperson.svg",
              ),
              Item(
                selectedRoute: selectedRoute,
                routeName: SettingsScreen.routeName,
                icon: "assets/icons/vsettings.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    Key key,
    @required this.selectedRoute,
    @required this.routeName,
    @required this.icon,
  }) : super(key: key);

  final String selectedRoute;
  final String routeName;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(routeName);
      },
      child: SizedBox(
        width: getProportionateScreenWidth(25),
        height: getProportionateScreenWidth(25),
        child: SvgPicture.asset(
          icon,
          color:
              routeName == selectedRoute ? Colors.lightGreen : kSecondaryColor,
        ),
      ),
    );
  }
}
