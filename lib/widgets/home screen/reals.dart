import 'package:flutter/material.dart';
import 'package:instagram/widgets/home%20screen/video_player.dart';

class RealsWidget extends StatelessWidget {
  const RealsWidget({
    super.key,
    required this.user,
    required this.description,
    required this.videoUrl,
    required this.daysAgo,
    required this.image,
    this.ads,
  });

  final String user;
  final String image;
  final String description;
  final String videoUrl;
  final String daysAgo;
  final String? ads;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(height: 10),

          ////////////////////////
          // Navbar for the real//
          ////////////////////////
          Row(
            children: [
              //USer Image
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                width: 30,
                height: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.network(
                    image, // image for the profile
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              //User Name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user, // user name in the head of the real
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(
                        context,
                      ).colorScheme.onPrimary.withValues(alpha: 0.9),
                    ),
                  ),
                  Text(
                    ads!, // is it sposored or not
                    style: TextStyle(
                      fontSize: 8,
                      color: Theme.of(
                        context,
                      ).colorScheme.onPrimary.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              //Follow Button
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  side: BorderSide(color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                ),
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
              ),
              //Details three dots.
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),

          ////////////////////////
          // Real video Section //
          ////////////////////////
          SizedBox(
            height: 200,
            width: double.infinity,
            child: VideoPlayerWidget(videoURL: videoUrl),
          ),

          /////////////////////////////
          /// Real like etc section ///
          /////////////////////////////
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_bubble_outline_outlined,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.repeat,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.share,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
              Expanded(child: Container()),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),

          ////////////////////////
          /// Real Description ///
          ////////////////////////
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    user, // user name in description
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    description, // Real description
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white.withValues(alpha: 0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),

              Text(
                '$daysAgo days ago', // days ago of posted real
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
