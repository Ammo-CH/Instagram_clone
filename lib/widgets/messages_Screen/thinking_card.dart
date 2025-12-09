import 'package:flutter/material.dart';

class ThinkingCard extends StatelessWidget {
  const ThinkingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.network(
                      'https://i.pinimg.com/736x/bb/85/1d/bb851d2988a8e10eebc9f035e512e28a.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 34,
                  left: 4,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        minimumSize: Size.zero,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12  ,
                          vertical: 4,
                        ),
                        
                        backgroundColor: const Color.fromARGB(255, 44, 44, 44),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Share a',
                            style: TextStyle(fontSize: 9, color: Colors.white.withValues(alpha: 0.7)),
                          ),
                          Text(
                            'note',
                            style: TextStyle(fontSize: 9, color: Colors.white.withValues(alpha: 0.7)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Your Note',
              style: TextStyle(color: Colors.white.withValues(alpha: 0.7), fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
