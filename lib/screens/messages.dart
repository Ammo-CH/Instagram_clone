import 'package:flutter/material.dart';

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
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(32),
                  borderSide: BorderSide(
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
