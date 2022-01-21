import 'package:flutter/material.dart';
class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text("Message Page",
        style: TextStyle(fontSize: 50),
      ),
    );

  }
}
