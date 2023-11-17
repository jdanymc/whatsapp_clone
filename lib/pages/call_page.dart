import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/item_call_widget.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
          ItemCallWidget(),
        ],
      ),
    );
  }
}
