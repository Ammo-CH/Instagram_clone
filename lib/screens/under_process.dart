import 'package:flutter/material.dart';

class UnderProcess extends StatelessWidget {
  const UnderProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('THIS APP IS UNDER BUILD MODE!!', style: TextStyle(fontSize: 18, color: Colors.white.withValues(alpha: 0.8))),
            Text('Try in a while', style: TextStyle(fontSize: 15, color: Colors.white.withValues(alpha: 0.6)),)
          ],
        ),
      ),
    );
  }
}