import 'package:flutter/material.dart';

class LiveChat extends StatelessWidget {
  const LiveChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          
          Expanded(child: Container()),
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.grey.withValues(alpha: 0.2),
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      color: Colors.white.withValues(alpha: 0.8),
                      Icons.search,
                    ),
                    hintText: 'Message...',

                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(32),
                    //   borderSide: BorderSide(
                    //     color: const Color.fromARGB(255, 83, 83, 83),
                    //   ),
                    // ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(32),
                    //   borderSide: BorderSide(color: Colors.red),
                    // ),
                  ),
                ),
              ),
            ),

  
        ],
      ),
    );
  }
}