import 'package:flutter/material.dart';
import 'package:instagram/widgets/home%20screen/video_player.dart';

class RealsScreenWidget extends StatelessWidget {
  const RealsScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            bottom: 40,
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


          /////////////////////////////////
         //// Description of the Video ///
        /////////////////////////////////

          Positioned(
            left: 0,
            bottom: 5,
            child: TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                "That's video description.",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 12,
                ),
              ),
            ),
          ),



           ////////////////////////////////////
          /// Like and comment etc section ///
         ////////////////////////////////////

          Positioned(
            right: 2,
            bottom: 5,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.repeat, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert_sharp, color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).clearSnackBars();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Taped')));
                  },child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
                    child: Image.network("https://images.pexels.com/photos/3944104/pexels-photo-3944104.jpeg",
                    fit: BoxFit.cover,),
                    
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }
}