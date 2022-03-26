import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_border/dotted_border.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            SizedBox(
              height: 16,
            ),
            _buildProfileButton(),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.bagShopping),
                _buildRoundTextButton('관심목록', FontAwesomeIcons.solidHeart),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 65,
                    height: 65,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32.5),
                      child: Image.network(
                        'https://www.daangn.com/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey[100],
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '당근조아',
                    style: textTheme().headline2,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text('당근동 #00912'),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileButton() {
    return DottedBorder(
      color: Colors.orange,
      strokeWidth: 1,
      dashPattern: [6, 3],
      borderType: BorderType.RRect,
      radius: Radius.circular(10),
      child: Container(
        height: 45,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://img.etnews.com/photonews/2111/1469640_20211102084651_398_0001.jpg',
                  width: 60,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                      left: 24,
                      right: 0,
                    ),
                    child: Text(
                      '중고거래는 이제 당근페이로 해보세요!',
                      style: textTheme().subtitle1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xF6FDD5C5),
          ),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: textTheme().subtitle1,
        ),
      ],
    );
  }
}
