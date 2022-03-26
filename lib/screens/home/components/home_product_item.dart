import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/product.dart';
import 'package:flutter_carrot_market_ui/screens/home/components/home_product_detail.dart';
import 'package:flutter_carrot_market_ui/screens/home/product/product_screen.dart';
import 'package:get/get.dart';

class HomeProductItem extends StatefulWidget {
  HomeProductItem({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<HomeProductItem> createState() => _HomeProductItemState();
}

class _HomeProductItemState extends State<HomeProductItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 판매상품 상세페이지로 이동
        Get.to(
          () => ProductScreen(
            product: widget.product,
          ),
        );
      },
      child: Container(
        height: 135.0,
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                widget.product.urlToImage,
                width: 115,
                height: 115,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            HomeProductDetail(product: widget.product),
          ],
        ),
      ),
    );
  }
}
