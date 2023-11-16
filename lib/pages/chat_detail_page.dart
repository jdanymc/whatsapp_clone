import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  const ChatDetailPage({super.key});

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
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
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
          ListView(
            children: [
              Align(
                alignment: Alignment.topLeft,
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
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(14.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        offset: Offset(4, 4),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Text(
                    "Hola, Juan, cómo estas?",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
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
                    color: Color(0xffe3ffc4),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0),
                      topLeft: Radius.circular(14.0),
                      topRight: Radius.circular(0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        offset: Offset(4, 4),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: Text(
                    "Holaa, estoy muy bien, ando aprendiendo Flutter?",
                  ),
                ),
              ),
            ],
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
                      print("object");
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
