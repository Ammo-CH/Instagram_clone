import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile%20screen/profile_tabs.dart';

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
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              ProfileCard(),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 25),
                        Text(
                          'Xavier',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('0', style: TextStyle(color: Colors.white)),
                            Text(
                              'posts',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('3', style: TextStyle(color: Colors.white)),
                            Text(
                              'followers',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('70', style: TextStyle(color: Colors.white)),
                            Text(
                              'following',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          /////////////////////
          //// Edit Profile ///
          /////////////////////
          Row(
            children: [
              SizedBox(width: 10),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                    backgroundColor: Colors.grey.shade800,
                    minimumSize: Size(0, 0),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 4),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(5),
                    ),
                    backgroundColor: Colors.grey.shade800,
                    minimumSize: Size(0, 0),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    'Share Profile',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_add,
                  color: Colors.white.withValues(alpha: 0.7),
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade800,
                  focusColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  minimumSize: Size(0, 0),
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                ),
              ),
            ],
          ),

          ////////////////////////////
          //// Tabs intergrations ////
          ////////////////////////////
        ProfileTabs()
        ],
      ),
    );
  }
}
///////////////////
/// Profile card //
///////////////////

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
              ),
              width: 90,
              height: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                  'https://i.pinimg.com/736x/bb/85/1d/bb851d2988a8e10eebc9f035e512e28a.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 9,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white.withValues(alpha: 0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    minimumSize: Size.zero,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),

                    backgroundColor: const Color.fromARGB(255, 44, 44, 44),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Obsessed',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white.withValues(alpha: 0.7),
                        ),
                      ),
                      Text(
                        'with...',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 4,
              left: 60,

              child: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Icons.add),

                    style: IconButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
