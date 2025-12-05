import 'package:flutter/material.dart';
import 'package:instagram/widgets/home%20screen/follower_story.dart';
import 'package:instagram/widgets/home%20screen/reals.dart';
import 'package:instagram/widgets/home%20screen/static_user_story.dart';

class MainInterferance extends StatelessWidget {
  const MainInterferance({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StaticUserStory(),
                FollowerStory(
                  image:
                      'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTAzL3JtNTk3ZGVzaWduLWMtYnVzLTAwMS5qcGc.jpg',
                  user: 'Nadia',
                ),
                FollowerStory(
                  image:
                      'https://i.pinimg.com/736x/22/bd/dc/22bddca967196ac04f7f285d4108a7ce.jpg',
                  user: 'Moiz',
                ),
                FollowerStory(
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3BSNoqdEP-YFfzCC_zh3DamAFuO4gooz-ag&s',
                  user: 'Usman',
                ),
                FollowerStory(
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtIxE60NjTPVQdc0ZFYJttskiw6hgNG7VUcA&s',
                  user: 'Devil_hunter',
                ),
                FollowerStory(
                  image:
                      'https://i.pinimg.com/736x/ed/69/58/ed69588b4855a0f25680813a5f2f2671.jpg',
                  user: 'annonymus',
                ),
              ],
            ),
          ),
          RealsWidget(
            user: 'mr._.annonymus',
            description: 'Just posted a new reels.',
            videoUrl:
                'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
            daysAgo: '13',
            image:
                'https://i.pinimg.com/736x/bb/85/1d/bb851d2988a8e10eebc9f035e512e28a.jpg',
            ads: 'Ad',
          ),
          RealsWidget(
            user: 'Mr.Beast',
            description: '100 days surviving challenge on mars.',
            videoUrl:
                'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
            daysAgo: '1',
            image:'https://i.pinimg.com/474x/45/09/c4/4509c44350acd454ec67edd3bd11f758.jpg',
            ads: 'Sponsored',
          ),
        ],
      ),
    );
  }
}
