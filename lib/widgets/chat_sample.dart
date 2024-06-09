import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSamples extends StatelessWidget {
  const ChatSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 80,
          ),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              color: Colors.white,
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              child: Text(
                "Hi ,Dear Programmer ,How Are You?",
                style: TextStyle(
                  fontSize: 16.5,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 20,),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(color: Color(0xFFE7FFDB)),
              child: Text(
                "Hi,Alex i am fine and well what about  you, and thanks for asking",
                style: TextStyle(fontSize: 16.5),
              ),
            ),
          ),
        )
      ],
    );
  }
}
