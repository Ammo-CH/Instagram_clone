import 'package:flutter/material.dart';
import 'package:instagram/widgets/home%20screen/video_player.dart';

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
      body: Stack(
        children: [
          /////////////////////////////
          /// Reel which is played  ///
          /////////////////////////////
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: VideoPlayerWidget(
              videoURL:
                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
            ),
          ),
          Positioned(
            left: 5,
            bottom: 50,
            child: Row(
              children: [
                /////////////////////////////
                /// User pic for the reel ///
                /////////////////////////////
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  width: 35,
                  height: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image.network(
                      'https://images.pexels.com/photos/34909740/pexels-photo-34909740.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                /////////////////
               /// Username ////
              /////////////////
              
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    "Hello World",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(0, 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(9),
                    ),
                    side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    foregroundColor: Colors.black,
                  ),
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.white.withValues(alpha: 0.8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
