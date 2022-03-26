import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/theme.dart';

import '../../models/icon_menu.dart';
import 'components/card_icon_menu.dart';
import 'components/my_carrot_header.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text(
          '나의 당근',
          style: textTheme().headlineLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu3),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu4),
          SizedBox(
            height: 8.0,
          ),
          CardIconMenu(iconMenuList: iconMenu5),
        ],
      ),
    );
  }
}
