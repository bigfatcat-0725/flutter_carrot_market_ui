import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/controllers/like_controller.dart';
import 'package:flutter_carrot_market_ui/models/product.dart';
import 'package:flutter_carrot_market_ui/models/user.dart';
import 'package:flutter_carrot_market_ui/screens/components/divide_line.dart';
import 'package:flutter_carrot_market_ui/screens/components/image_container.dart';
import 'package:flutter_carrot_market_ui/screens/home/product/components/product_view.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProductScreen extends StatefulWidget {
  ProductScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final LikeController likeController = LikeController();

  @override
  Widget build(BuildContext context) {
    var productImage = widget.product.urlToImage;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.5,
            leading: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    CupertinoIcons.arrow_left,
                  ),
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_outlined,
                    ),
                  ),
                ],
              ),
            ],
            pinned: true,
            floating: false,
            flexibleSpace: InkWell(
              onTap: () {
                Get.to(
                  () => ProductView(),
                  arguments: productImage,
                  transition: Transition.noTransition,
                  duration: Duration.zero,
                );
              },
              child: FlexibleSpaceBar(
                background: Image.network(
                  widget.product.urlToImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            expandedHeight: 300,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Column(
                children: [
                  ProductHead(widget: widget),
                  divideLine(),
                  ProductBody(widget: widget),
                  divideLine(),
                  Report(),
                  divideLine(),
                  WithProduct(widget: widget),
                ],
              ),
              childCount: 1,
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomAppBar(),
    );
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      child: Container(
        height: 60,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Obx(
                  () => IconButton(
                    onPressed: () {
                      bigfatcat.likes.contains(widget.product.title)
                          ? likeController.offLike(widget.product)
                          : likeController.onLike(widget.product);
                    },
                    icon: bigfatcat.likes.contains(widget.product.title)
                        ? Icon(CupertinoIcons.heart_fill)
                        : Icon(CupertinoIcons.heart),
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: 1,
                  height: 30,
                  color: Colors.grey[300],
                ),
                Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${numberFormat(widget.product.price)}원',
                        style: textTheme().headline2,
                      ),
                      Text(
                        "가격 제안 불가",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              splashColor: Color(0xCCFFFFFF),
              child: Ink(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "채팅으로 거래하기",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }
}

class ProductHead extends StatelessWidget {
  const ProductHead({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProductScreen widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ImageContainer(
                    borderRadius: 25,
                    imageUrl:
                        'https://images.chosun.com/resizer/OXrnN3OlFesXmgmLyS3_FulhAts=/600x600/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/UVBJZL3RXAB36BDSHVM3MW2WNY.jpg',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.product.author,
                        style: textTheme().headline3,
                      ),
                      Text(
                        widget.product.address,
                        style: textTheme().subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "90°C",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 45,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            CupertinoIcons.hand_thumbsup,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "매너온도",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductBody extends StatelessWidget {
  const ProductBody({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProductScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 24,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.product.title,
            style: textTheme().headlineLarge,
          ),
          Row(
            children: [
              Text(widget.product.category + ' • '),
              Text(
                widget.product.publishedAt,
                style: textTheme().bodyText2,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.product.description,
                style: textTheme().bodyText1,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                '채팅 ${widget.product.commentsCount}개 • 관심 ${widget.product.heartCount} • 조회 10',
                style: textTheme().bodyText2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Report extends StatelessWidget {
  const Report({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "이 게시글 신고하기",
              style: textTheme().headline2,
            ),
            Icon(
              CupertinoIcons.right_chevron,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}

class WithProduct extends StatelessWidget {
  const WithProduct({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProductScreen widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${widget.product.author}님의 판매 상품",
                style: textTheme().headline2,
              ),
              InkWell(
                onTap: () {},
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Text(
                    "모두보기",
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 15,
            runSpacing: 20,
            children: [
              WithProductCard(),
              WithProductCard(),
              WithProductCard(),
              WithProductCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class WithProductCard extends StatelessWidget {
  const WithProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: 170,
              height: 120,
              child: Image.network(
                'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_2.jpg?raw=true',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "노트북",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            '9,999원',
            style: textTheme().headline3,
          ),
        ],
      ),
    );
  }
}
