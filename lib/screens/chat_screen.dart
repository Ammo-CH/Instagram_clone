import 'package:flutter/material.dart';
import 'package:instagram/widgets/messages_Screen/chat_messages.dart';
import 'package:instagram/widgets/messages_Screen/new_chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Messages'), backgroundColor: Colors.black),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Expanded(child: ChatMessages()),
          NewChat(),
        ],
      ),
    );
  }
}
