import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/theme.dart';

class RoundBorderText extends StatelessWidget {
  const RoundBorderText({
    Key? key,
    required this.title,
    required this.position,
    this.radius = 18.0,
  }) : super(key: key);
  final String title;
  final int position;
  final double radius;

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: InkWell(
        borderRadius: BorderRadius.circular(18.0),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(width: 0.5, color: Colors.grey),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: textTheme().headline3,
          ),
        ),
      ),
    );
  }
}
