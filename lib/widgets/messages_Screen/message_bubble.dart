import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble.first({
    super.key,
    required this.message,
    required this.isMe,
  }) : isFirstInSequence = true;

  const MessageBubble.next({
    super.key,
    required this.message,
    required this.isMe,
  }) : isFirstInSequence = false;

  final bool isFirstInSequence;
  final String message;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 46, vertical: 4),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              // No extra space needed since username is removed
              Container(
                decoration: BoxDecoration(
                  color: isMe
                      ? Colors.grey[300]
                      : theme.colorScheme.secondary.withAlpha(200),
                  borderRadius: BorderRadius.only(
                    topLeft: !isMe && isFirstInSequence
                        ? Radius.zero
                        : const Radius.circular(12),
                    topRight: isMe && isFirstInSequence
                        ? Radius.zero
                        : const Radius.circular(12),
                    bottomLeft: const Radius.circular(12),
                    bottomRight: const Radius.circular(12),
                  ),
                ),
                constraints: const BoxConstraints(maxWidth: 200),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 14,
                ),
                child: Text(
                  message,
                  style: TextStyle(
                    height: 1.3,
                    color: isMe
                        ? Colors.black87
                        : theme.colorScheme.onSecondary,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
