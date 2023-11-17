import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/call_page.dart';
import 'package:whatsapp_clone/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabControler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabControler = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabControler,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.camera_alt,
              ),
            ),
            Tab(
              child: Text(
                "CHAT",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message,
        ),
      ),
      body: TabBarView(
        controller: _tabControler,
        children: [
          Center(child: Text("Camera")),
          ChatPage(),
          Center(child: Text("Status")),
          CallPage(),
        ],
      ),
    );
  }
}
