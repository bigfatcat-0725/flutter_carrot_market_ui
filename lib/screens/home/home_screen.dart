import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/product.dart';
import 'package:flutter_carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market_ui/screens/home/components/home_product_item.dart';
import 'package:flutter_carrot_market_ui/screens/home/local/local_screen.dart';
import 'package:flutter_carrot_market_ui/screens/home/search/search_screen.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String currentLocation;
  final Map<String, String> locationTypeToString = {
    "carrot1": "당근1동",
    "carrot2": "당근2동",
    "setting": "지역설정",
  };

  @override
  void initState() {
    super.initState();
    currentLocation = "carrot1";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: PopupMenuButton(
          offset: Offset(0, 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          onSelected: (String value) {
            if (value == "setting") {
              Get.to(() => LocalScreen());
            }
            setState(() {
              currentLocation = value;
            });
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: "carrot1",
                onTap: () {
                  Get.showSnackbar(
                    GetSnackBar(
                      message: "현재 동네가 '당근1동'로 변경됐습니다.",
                      duration: Duration(seconds: 1),
                      snackPosition: SnackPosition.BOTTOM,
                    ),
                  );
                },
                child: SizedBox(
                  width: 150,
                  child: Text(
                    "당근1동",
                    style: !(currentLocation == "carrot1")
                        ? TextStyle(
                            color: Colors.grey,
                          )
                        : TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              PopupMenuItem(
                value: "carrot2",
                onTap: () {
                  Get.showSnackbar(
                    GetSnackBar(
                      message: "현재 동네가 '당근2동'로 변경됐습니다.",
                      duration: Duration(seconds: 1),
                      snackPosition: SnackPosition.BOTTOM,
                    ),
                  );
                },
                child: Text(
                  "당근2동",
                  style: !(currentLocation == "carrot2")
                      ? TextStyle(
                          color: Colors.grey,
                        )
                      : TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              PopupMenuItem(
                value: "setting",
                child: Text(
                  "내 동네 설정",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ];
          },
          child: Row(
            children: [
              Text(
                locationTypeToString[currentLocation] ?? "",
                style: textTheme().headlineLarge,
              ),
              SizedBox(
                width: 4.0,
              ),
              Icon(
                CupertinoIcons.chevron_down,
                size: 15,
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => SearchScreen());
            },
            icon: Icon(CupertinoIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.list_dash),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell),
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Visibility(
            visible: locationTypeToString[currentLocation] ==
                    productList[index].address
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(CupertinoIcons.add),
      ),
    );
  }
}
