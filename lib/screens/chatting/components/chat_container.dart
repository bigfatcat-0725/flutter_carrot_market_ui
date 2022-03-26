import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/models/chat_message.dart';
import 'package:flutter_carrot_market_ui/screens/components/image_container.dart';
import 'package:flutter_carrot_market_ui/theme.dart';

class ChatContainer extends StatelessWidget {
  const ChatContainer({Key? key, required this.chatMessage}) : super(key: key);
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Color(0xE0E0E0FF), width: 0.5),
            ),
          ),
          height: 80,
          child: Padding(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                ImageContainer(
                  borderRadius: 25,
                  imageUrl: chatMessage.profileImage,
                  width: 50,
                  height: 50,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: chatMessage.sender,
                              style: textTheme().headline2,
                            ),
                            TextSpan(text: chatMessage.location),
                            TextSpan(text: ' • ${chatMessage.sendDate}'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        chatMessage.message,
                        style: textTheme().bodyText1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Visibility(
                  visible: chatMessage.imageUri != null,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: ClipRRect(
                      child: ImageContainer(
                        width: 50,
                        height: 50,
                        borderRadius: 0,
                        imageUrl: chatMessage.imageUri ?? '',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
