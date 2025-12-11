import 'package:flutter/material.dart';

class ChatPerson extends StatelessWidget {
  const ChatPerson({
    super.key,
    required this.userName,
    required this.message,
    required this.days,
    required this.userImage,
  });

  final String userName;
  final String message;
  final String days;
  final String userImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(width: 5),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(200)),
            width: 45,
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.network(userImage, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 7),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 10,
                        child: Text(
                          "$message  ",
                          style: TextStyle(fontSize: 13),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: true,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          days,
                          style: TextStyle(fontSize: 13),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
