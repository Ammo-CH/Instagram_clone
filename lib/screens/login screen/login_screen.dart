import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram/widgets/bottom_nav_bar.dart';

final _firebase = FirebaseAuth.instance;

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});

  final _key = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';

  // var _isAuthenticating = true;
  void _submit(BuildContext context) async {
    final isValid = _key.currentState!.validate();
    if (!isValid) {
      return;
    }
    _key.currentState!.save();
    try {
      // setState(() {
      //   _isAuthenticating = true;
      // });

      if (_isLogin) {
        final userCredentials = await _firebase.signInWithEmailAndPassword(
          email: _enteredEmail,
          password: _enteredPassword,
        );
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavBar()),
        );
      } else {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
          email: _enteredEmail,
          password: _enteredPassword,
        );

        FirebaseFirestore.instance
            .collection('Users')
            .doc(userCredentials.user!.uid)
            .set({'Email': _enteredEmail, 'password': _enteredPassword});
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavBar()),
        );
      }
    } on FirebaseException catch (error) {
      if (error.code == "email-already-in-use") {}
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.message ?? 'Something went wrong')),
      );
      // setState(() {
      //   _isAuthenticating = false;
      // });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Form(
        key: _key,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Image.asset(
                'assets/images/instagram_logo.png',
                width: 300,
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextFormField(
                  onFieldSubmitted: (value) => _submit(context),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    isDense: true,
                    
                    hintText: "Phone number, username, or email address",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        !value.contains('@')) {
                      return 'Please Enter a valid email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _enteredEmail = value!;
                  },
                ),
              ),
              SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: TextFormField(
                  onFieldSubmitted: (value) => _submit(context),
                  // keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    isDense: true,
                    hintText: "Password",

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        value.length < 8) {
                      return 'Password must be 8 characters long';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _enteredPassword = value!;
                  },
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: ElevatedButton(
                        onPressed: () {
                          _submit(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            46,
                            114,
                            223,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(12),
                          ),
                        ),
                        child: Text(
                          'Log in',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.4),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white.withValues(alpha: 0.4),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.all(0),
                  minimumSize: Size(0, 0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/facebook_logo.png',
                      height: 40,
                      width: 40,
                    ),
                    Text(
                      'Log in with Facebook',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Forgotten your password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 12,
                  ),
                ),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      minimumSize: Size(0, 0),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
