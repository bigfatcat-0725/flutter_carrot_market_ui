import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/neighborhood_life.dart';
import 'package:flutter_carrot_market_ui/screens/components/divide_line.dart';
import 'package:flutter_carrot_market_ui/theme.dart';

class LifeBody extends StatelessWidget {
  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);
  final NeighborhoodLife neighborhoodLife;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFD4D5DD),
          ),
        ),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriting(),
          _buildImage(),
          _buildWriter(),
          divideLine(),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Padding _buildTop() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 8,
              right: 8,
              top: 6,
              bottom: 6,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Text(
              neighborhoodLife.category,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildWriting() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          neighborhoodLife.content,
          style: textTheme().bodyText1,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Visibility _buildImage() {
    return Visibility(
      visible: neighborhoodLife.contentImgUri != '',
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Image.network(
          neighborhoodLife.contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildWriter() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ' ${neighborhoodLife.userName} • ',
                  style: textTheme().bodyText2,
                ),
                TextSpan(
                  text: ' ${neighborhoodLife.location}',
                  style: textTheme().bodyText2,
                ),
              ],
            ),
          ),
          Text(
            neighborhoodLife.date,
            style: textTheme().bodyText2,
          ),
        ],
      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            CupertinoIcons.smiley,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            '공감하기',
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          SizedBox(
            width: 22,
          ),
          Icon(
            CupertinoIcons.chat_bubble,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "${'댓글쓰기'} $commentCount",
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
