import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/recommend_store.dart';
import 'package:flutter_carrot_market_ui/screens/near_me/components/round_border_text.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 12),
              child: TextField(
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: IconButton(
                      constraints: BoxConstraints(
                        maxWidth: 25,
                        maxHeight: 50,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  disabledBorder: _buildOutLineInputBorder(),
                  enabledBorder: _buildOutLineInputBorder(),
                  focusedBorder: _buildOutLineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding:
                      EdgeInsets.only(left: 8, bottom: 4, top: 4, right: 0),
                  hintText: "'당근동' 근처에서 검색",
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            thickness: 0.5,
            color: Colors.grey[300],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  "이웃들이 많이 찾고 있어요!",
                  style: textTheme().headline3,
                ),
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
            ],
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 0, color: Color(0xFFD4D5DD)),
      borderRadius: BorderRadius.circular(10.0),
    );
  }
}
