import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/phone_auth_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneAuthUI(),
    );
  }
}
