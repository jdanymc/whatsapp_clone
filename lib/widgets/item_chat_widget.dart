import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/pages/chat_detail_page.dart';

class ItemChatWidget extends StatelessWidget {
  // String avatarUrl;
  // String username;
  // String message;
  // String time;
  // int countMessage;
  // bool isTyping;

  ChatModel chatModel;

  ItemChatWidget({
    // required this.avatarUrl,
    // required this.username,
    // required this.message,
    // required this.time,
    // required this.countMessage,
    // required this.isTyping,
    required this.chatModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.amberAccent,
          radius: 26,
          backgroundImage: NetworkImage(
            chatModel.avatarUrl,
          ),
        ),
        title: Text(
          chatModel.username,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 13.0,
            color:
                chatModel.isTyping ? const Color(0xff01C851) : Colors.black45,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12,
                color: chatModel.countMessage > 0
                    ? const Color(0xff01C851)
                    : Colors.black45,
              ),
            ),
            chatModel.countMessage > 0
                ? Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xff01C851),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
