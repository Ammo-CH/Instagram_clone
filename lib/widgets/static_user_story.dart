import 'package:flutter/material.dart';

class StaticUserStory extends StatelessWidget {
  const StaticUserStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10,),
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
                      child: Image.network(
                        'https://i.pinimg.com/736x/bb/85/1d/bb851d2988a8e10eebc9f035e512e28a.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
        
                  Positioned(
                    bottom: 4,
                    left: 48,
        
                    child: Container(
                      width: 22,
                      height: 22,
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
              Text(
                'Your Story',
                style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
              ),
            ],
          
        ),
      ],
    );
  }
}
