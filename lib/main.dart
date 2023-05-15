import 'package:flutter/material.dart';
import 'package:jobs_ui/route/app_route.dart';
import 'package:jobs_ui/route/app_route_name.dart';

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
      title: 'Jobs UI',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.cyan
      ),
      onGenerateRoute: AppRoute.generate,
      initialRoute: AppRouteName.getStarted,
    );
  }
}

