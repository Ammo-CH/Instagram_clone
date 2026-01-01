import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';/
import 'package:flutter/material.dart';
import 'package:instagram/widgets/messages_Screen/message_bubble.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    final authenticatedUSer = FirebaseAuth.instance.currentUser!;
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('chats')
          .orderBy('createdAt', descending: false)
          .snapshots(),

      builder: (context, chatsnapshot) {
        if (chatsnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: SizedBox(
              height: 75,
              width: 75,
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (!chatsnapshot.hasData || chatsnapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No message found'));
        }
        if (chatsnapshot.hasError) {
          return const Center(child: Text('Something went wrong'));
        }
        final loadMessages = chatsnapshot.data!.docs;
        return ListView.builder(
          itemCount: loadMessages.length,
          itemBuilder: (ctx, index) {
            final chatMessage = loadMessages[index].data();
            final nextChatMessage = index + 1 < loadMessages.length
                ? loadMessages[index + 1].data()
                : null;
            final currentUserId = chatMessage['userId'];
            final nextUserId = nextChatMessage != null
                ? nextChatMessage['userId']
                : null;
            final nextUserIsSame = nextUserId == currentUserId;

            if (nextUserIsSame) {
              return MessageBubble.next(
                message: chatMessage['text'],
                isMe: authenticatedUSer.uid == currentUserId,
              );
            } else {
              return MessageBubble.first(
                // username: 'username',
                message: chatMessage['text'],
                isMe: authenticatedUSer.uid == currentUserId,
              );
            }
          },
        );
      },
    );
  }
}
