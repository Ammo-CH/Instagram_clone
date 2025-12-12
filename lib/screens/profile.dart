import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: Colors.white),
        ),
        title: Text("Xavier", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                icon: Icon(Icons.alternate_email_outlined, color: Colors.white),
              ),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_outlined, color: Colors.white),
                padding: EdgeInsets.zero,
              ),
            ],
          ),
        ],
      ),
      body: Text("Hello World"),
    );
  }
}
