import 'package:flutter/material.dart';
import 'package:instagram/widgets/reels%20screen/reals_screen_widget.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Reels", style: TextStyle(color: Colors.white)),
            SizedBox(width: 30),
            Text("Friends", style: TextStyle(color: Colors.white)),
          ],
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_1_outlined)),
        ],
      ),
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,

        itemBuilder: (context, index) => RealsScreenWidget(),
      ),
    );
  }
}
