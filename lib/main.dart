import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram/screens/login%20screen/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.white60),
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: Colors.white.withValues(alpha: 0.7)),
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      title: 'Instagram clone',
      home: LoginScreen()
      // BottomNavBar(),
    );
  }
}
