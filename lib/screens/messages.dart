import 'package:flutter/material.dart';
import 'package:instagram/widgets/messages_Screen/chat_person.dart';
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
            'Xavier',
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
      body: SingleChildScrollView(
        child: Column(
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

                ///////////////////////
                //// Mesaages title ///
                ///////////////////////
                Row(
                  children: [
                    SizedBox(width: 9),
                    Text('Messages', style: TextStyle(fontSize: 16)),
                    SizedBox(width: 7),
                    Icon(
                      Icons.notifications_off_outlined,
                      color: Colors.white.withValues(alpha: 0.9),
                      size: 16,
                    ),
                    Expanded(child: Container()),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Requests',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),

                ///////////////////
                //// User Chats ///
                ///////////////////
                ChatPerson(
                  userName: "Mister Unknown",
                  message: "4+ new messages .",
                  days: '1d',
                  userImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoBuMvSuYezLE9rwI-zOJeIOmcIGfDPqOvFA&s"
                ),
                ChatPerson(
                  userName: "Rah.",
                  message: "4+ new messages .",
                  days: '1d',
                  userImage: "https://images.pexels.com/photos/29506842/pexels-photo-29506842.jpeg"
                ),
                ChatPerson(
                  userName: "Sharjeel Abbas",
                  message: "Nothing beats the jet 2u holidays and right now u can save 50 pounds per persons That's a family of full .",
                  days: '3w',
                  userImage: "https://images.pexels.com/photos/30124921/pexels-photo-30124921.jpeg"
                ),
                ChatPerson(
                  userName: "Malaika",
                  message: "??.",
                  days: '2m',
                  userImage: "https://images.pexels.com/photos/29372114/pexels-photo-29372114.jpeg"
                ),
                ChatPerson(
                  userName: "John micheal",
                  message: "Hey how are u doing today?. .",
                  days: '3h',
                  userImage: "https://images.pexels.com/photos/15138701/pexels-photo-15138701.jpeg"
                ),
                ChatPerson(
                  userName: "Art by albi",
                  message: "Are u coming on swat trip .",
                  days: '1h',
                  userImage: "https://images.pexels.com/photos/32628527/pexels-photo-32628527.jpeg"
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
