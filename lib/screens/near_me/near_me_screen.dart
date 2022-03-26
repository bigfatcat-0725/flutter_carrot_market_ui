import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/recommend_store.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/bottom_title_icon.dart';
import 'components/round_border_text.dart';
import 'components/search_text_field.dart';
import 'components/store_item.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '내 근처',
          style: textTheme().headlineLarge,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.pen),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          SizedBox(
            height: 66,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: searchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: RoundBorderText(
                    title: searchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),
          Divider(
            thickness: 0.5,
            height: 0.5,
            color: Colors.grey[300],
            indent: 16,
            endIndent: 16,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 24,
              bottom: 24,
            ),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: [
                BottomTitleIcon(
                  title: '구인구직',
                  iconData: FontAwesomeIcons.user,
                ),
                BottomTitleIcon(
                  title: '과외/클래스',
                  iconData: FontAwesomeIcons.penToSquare,
                ),
                BottomTitleIcon(
                  title: '농수산물',
                  iconData: FontAwesomeIcons.appleWhole,
                ),
                BottomTitleIcon(
                  title: '부동산',
                  iconData: FontAwesomeIcons.hotel,
                ),
                BottomTitleIcon(
                  title: '중고차',
                  iconData: FontAwesomeIcons.car,
                ),
                BottomTitleIcon(
                  title: '전시/행사',
                  iconData: FontAwesomeIcons.chessBishop,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              '이웃들의 추천 가게',
              style: textTheme().headline2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
