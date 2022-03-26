import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/home/search/search_screen.dart';
import 'package:get/get.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () =>
          Get.to(() => SearchScreen(), transition: Transition.downToUp),
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        disabledBorder: _buildOutLineInputBorder(),
        enabledBorder: _buildOutLineInputBorder(),
        focusedBorder: _buildOutLineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: Icon(
          CupertinoIcons.search,
          color: Colors.black,
          size: 20,
        ),
        contentPadding: EdgeInsets.only(left: 0, bottom: 15, top: 15, right: 0),
        hintText: '주변 가게, 알바, 중고차를 찾아보세요.',
        hintStyle: TextStyle(fontSize: 15),
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
