import 'package:flutter/material.dart';

class FollowerStory extends StatelessWidget {
  const FollowerStory({super.key, required this.image, required this.user});

  final String image;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        
        Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.network(image, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Text(
              user,
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ],
        ),
      ],
    );
  }
}
