import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/splash.dart';
import 'theme.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: Splash(),
    );
  }
}
