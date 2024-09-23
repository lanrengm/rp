import 'package:flutter/material.dart';
import 'package:cie/pages/root.dart' as root;
import 'package:cie/login.dart' as login;

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '报修助手',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        scaffoldBackgroundColor: Colors.grey.shade300,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          color: Colors.blue.shade700,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue.shade700,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue.shade700,
        ),
      ),
      // home: root.Root(),
      home: login.Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
