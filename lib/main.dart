import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookings.com',
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorDark: Color(0xff002bfe),
        // primaryColorDark:
        // primarySwatch: Colo47rs.green,
      ),
      home: const MyHomePage(
        title: 'Bookings.com',
      ),
    );
  }
}
