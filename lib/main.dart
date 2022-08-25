import 'package:flutter/material.dart';
import 'package:my_first_app/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/utils/routes.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: avoid_unnecessary_containers
      
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false ,
      
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/":(context)=>const LoginPage(),
        MyRoutes.homeRoute:(context)=>const HomePage(),
        MyRoutes.loginRoute:(context) => const LoginPage()
      },
    );
  }
}
