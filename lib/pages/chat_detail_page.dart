import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/models/chat_message_model.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  TextEditingController sms = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 22,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white10,
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
            ),
            SizedBox(
              width: 8.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ximena Lopez",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  Text(
                    "Last seen today 2:20 PM",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Stack(
        children: [
          //fondo
          Container(
            color: Colors.black.withOpacity(0.09),
          ),
          //listado de mensajes
          ListView.builder(
            itemCount: chatsMessageList.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: chatsMessageList[index].messageType == 'me'
                    ? Alignment.topRight
                    : Alignment.topLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 6.0,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 6.0,
                  ),
                  decoration: BoxDecoration(
                    color: chatsMessageList[index].messageType == 'me'
                        ? const Color(0xffe3ffc4)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(14.0),
                      bottomRight: const Radius.circular(14.0),
                      topLeft: chatsMessageList[index].messageType == 'me'
                          ? const Radius.circular(14.0)
                          : const Radius.circular(0),
                      topRight: chatsMessageList[index].messageType == 'me'
                          ? const Radius.circular(0)
                          : const Radius.circular(14.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        offset: const Offset(4, 4),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Text(
                    chatsMessageList[index].messageContent,
                  ),
                ),
              );
            },
          ),
          //Input del nuevo mensaje
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 8.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: sms,
                      decoration: InputDecoration(
                        hintText: "Type message",
                        hintStyle: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black38,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(
                          Icons.sentiment_satisfied_alt,
                          size: 30.0,
                          color: Colors.black45,
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.attach_file,
                                size: 30.0,
                                color: Colors.black45,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.camera_alt,
                                size: 30.0,
                                color: Colors.black45,
                              ),
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 7.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (sms.text.trim().isNotEmpty) {
                        chatsMessageList.add(
                          ChatMessageModel(
                              messageContent: sms.text, messageType: 'me'),
                        );
                        sms.clear();
                        setState(() {});
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Color(0xff00887B),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
