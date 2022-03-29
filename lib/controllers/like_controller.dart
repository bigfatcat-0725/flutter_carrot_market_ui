import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/user.dart';
import 'package:flutter_carrot_market_ui/screens/my_carrot/likes_list_screen.dart';
import 'package:get/get.dart';

// 유저의 정보에 들어감
// 일단은 게시물 id를 안만들었으니 타이틀로 대신

class LikeController extends GetxController {
  onLike(product) {
    bigfatcat.likes.add(product.title);
    Get.showSnackbar(GetSnackBar(
      message: '관심목록에 추가됐어요.',
      mainButton: Container(
        margin: EdgeInsets.only(right: 16),
        child: InkWell(
          onTap: () {
            Get.to(() => LikesListScreen());
          },
          child: Text(
            '관심목록보기',
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      duration: Duration(seconds: 1),
      snackPosition: SnackPosition.BOTTOM,
    ));
  }

  offLike(product) {
    bigfatcat.likes.remove(product.title);
  }
}
