import 'package:ecom/routes/approute.dart';
import 'package:ecom/theme/themedata.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: appTheme,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
