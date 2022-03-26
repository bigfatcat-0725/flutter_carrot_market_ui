import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/main_screens.dart';
import 'package:get/get.dart';

class LocalScreen extends StatelessWidget {
  const LocalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(() => MainScreens());
          },
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: Center(child: Text("지역설정")),
    );
  }
}
