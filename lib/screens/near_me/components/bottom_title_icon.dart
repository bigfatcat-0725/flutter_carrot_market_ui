import 'package:flutter/material.dart';

class BottomTitleIcon extends StatelessWidget {
  const BottomTitleIcon({Key? key, required this.iconData, required this.title})
      : super(key: key);
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: 70,
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
