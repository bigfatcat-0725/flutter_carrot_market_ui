import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import '../../../models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  const CardIconMenu({Key? key, required this.iconMenuList}) : super(key: key);
  final List<IconMenu> iconMenuList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(
                iconMenuList[index].title, iconMenuList[index].iconData),
          ),
        ),
      ),
    );
  }

  Widget _buildRowIconItem(String title, IconData iconData) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        child: Row(
          children: [
            Icon(
              iconData,
              size: 22,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: textTheme().subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
