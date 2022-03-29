import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/product.dart';
import 'package:flutter_carrot_market_ui/models/user.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/screens/home/components/home_product_item.dart';
import 'package:flutter_carrot_market_ui/theme.dart';

class LikesListScreen extends StatelessWidget {
  const LikesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '나의 리스트',
          style: textTheme().headlineLarge,
        ),
        bottom: appBarBottomLine(),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Visibility(
            visible: bigfatcat.likes.contains(productList[index].title)
                ? true
                : false,
            child: HomeProductItem(
              product: productList[index],
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 16,
          endIndent: 16,
          color: Colors.grey,
        ),
        itemCount: productList.length,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.orange,
      //   child: Icon(CupertinoIcons.add),
      // ),
    );
  }
}
