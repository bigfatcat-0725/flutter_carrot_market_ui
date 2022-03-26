import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/main_screens.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 2), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainScreens()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          'http://www.dailymedi.com/wys2/file_attach/2021/09/10/1631243542-71.png',
          width: MediaQuery.of(context).size.width * 0.6,
        ),
      ),
    );
  }
}
