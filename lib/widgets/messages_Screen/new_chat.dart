import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NewChat extends StatefulWidget {
  const NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  final _messageControllor = TextEditingController();

  @override
  void dispose() {
    _messageControllor.dispose();
    super.dispose();
  }

  void _sendMessage() async {
    final enteredMessage = _messageControllor.text;
    if (enteredMessage.trim().isEmpty) {
      return;
    }
    FocusScope.of(context).unfocus();
    _messageControllor.clear();

    final user = FirebaseAuth.instance.currentUser!;
    final userData = await FirebaseFirestore.instance
        .collection('Users')
        .doc(user.uid)
        .get();

    FirebaseFirestore.instance.collection('chats').add({
      'text': enteredMessage,
      'createdAt': Timestamp.now(),
      'userId': user.uid,
      'username': userData.data()!['username'],
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color: Colors.grey.withValues(alpha: 0.2),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _messageControllor,
                  onSubmitted: (value) {
                    _sendMessage();
                  },
                  textAlignVertical: TextAlignVertical.center,
                  autocorrect: true,
                  enableSuggestions: true,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      color: Colors.white.withValues(alpha: 0.8),
                      Icons.search,
                    ),
                    hintText: 'Message...',
                  ),
                ),
              ),
              IconButton(onPressed: _sendMessage, icon: Icon(Icons.send)),
            ],
          ),
        ),
      );
    
  }
}
