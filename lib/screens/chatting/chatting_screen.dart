import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/chat_message.dart';
import 'package:flutter_carrot_market_ui/theme.dart';
import '../components/appbar_preferred_size.dart';
import 'components/chat_container.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '채팅',
          style: textTheme().headlineLarge,
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.qrcode),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.bell),
              ),
            ],
          ),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
