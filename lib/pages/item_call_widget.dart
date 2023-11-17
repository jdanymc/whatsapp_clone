
import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  const ItemCallWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 26.0,
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
        title: Text(
          'Juan Manuel Gonzales',
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(
              Icons.call_made_rounded,
              color: Color(0xff01c851),
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              "Ayer 11:02 pm",
              style: TextStyle(
                color: Colors.black45,
              ),
            )
          ],
        ),
        trailing: Icon(
          Icons.call,
          color: Color(0xff01c851),
        ),
      ),
    );
  }
}
