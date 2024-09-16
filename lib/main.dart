import 'package:chatt_app/firebase_options.dart';
import 'package:chatt_app/pages/chat_page.dart';
import 'package:chatt_app/pages/login_page.dart';
import 'package:chatt_app/pages/regester_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ChatPage.id: (context) => ChatPage(),
        'LoginPage': (context) => LoginPage(),
        'RegisterPage': (context) => RegesterPage(),
      },
      initialRoute: "LoginPage",
    );
  }
}
