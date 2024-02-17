import 'package:flutter/material.dart';

import 'pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        colorScheme: const ColorScheme.dark(
          background: Colors.black,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Instagram clone'),
    );
  }
}
