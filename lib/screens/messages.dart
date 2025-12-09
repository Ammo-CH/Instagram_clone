import 'package:flutter/material.dart';
import 'package:instagram/widgets/messages_Screen/thinking_card.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Container(),
        title: Center(
          child: Text(
            'Nothing',
            style: TextStyle(color: Colors.white.withValues(alpha: 0.7)),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_note_rounded,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          /////////////////////
          //// Meta Search ////
          /////////////////////
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Colors.grey.withValues(alpha: 0.2),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    color: Colors.white.withValues(alpha: 0.8),
                    Icons.search,
                  ),
                  hintText: 'Search or Ask MetaAI',

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 83, 83, 83),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ),

          ///////////////////////////
          //// User Thinking Card ///
          ///////////////////////////
          Column(
            children: [
              SizedBox(height: 15),
              Row(
                children: [
                  ThinkingCard(),
                  // Add more user in future
                ],
              ),
              //////////////////////
             //// Mesaages title///
            //////////////////////
            ///
            Row(children: [
              
              SizedBox(width: 9,),
              Text('Messages', style: TextStyle(fontSize: 16),),
              SizedBox(width: 7,),
              Icon(Icons.notifications_off_outlined, color: Colors.white.withValues(alpha: 0.9),size: 16,),
              Expanded(child: Container(),),
              TextButton(onPressed: (){}, child: Text('Requests', style: TextStyle(color: Colors.blueAccent),))
            ],)
            ],
          ),
        ],
      ),
    );
  }
}
