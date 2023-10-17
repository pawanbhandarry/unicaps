import 'package:flutter/material.dart';
import 'package:unicaps/constants/pallete.dart';
import 'package:unicaps/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ).copyWith(
          textTheme: TextTheme(),
          primaryColor: Pallete.primaryColor,
          scaffoldBackgroundColor: Pallete.backgroundColor,
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(fontFamily: ' Poppins'),
              backgroundColor: Pallete.backgroundColor,
              centerTitle: true,
              iconTheme: IconThemeData(
                color: Pallete.primaryColor,
              ))),
      home: HomeScreen(),
    );
  }
}
