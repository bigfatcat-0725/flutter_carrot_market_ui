import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/neighborhood_life.dart';

class LifeHeader extends StatelessWidget {
  const LifeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      color: Colors.grey[100],
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: searchLifeKeyword.length,
          itemBuilder: (context, index) {
            return Center(
              child: _RoundBorderText(
                title: searchLifeKeyword[index],
                position: index,
              ),
            );
          },
        ),
      ),
    );
  }
}

class _RoundBorderText extends StatelessWidget {
  const _RoundBorderText({
    Key? key,
    required this.title,
    required this.position,
  }) : super(key: key);
  final String title;
  final int position;

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: InkWell(
        borderRadius: BorderRadius.circular(18.0),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(width: 0.5, color: Colors.grey),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
