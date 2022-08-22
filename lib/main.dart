import 'package:exam_prep_app/screens/login_screen.dart';
import 'package:exam_prep_app/screens/navigation_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExamPrepApp());
}

class ExamPrepApp extends StatelessWidget {
  const ExamPrepApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.light(),
      initialRoute: LoginScreen.routeName,
      routes: {
        MyNavigationBar.routeName: (context) => const MyNavigationBar(),
        LoginScreen.routeName: (context) => const LoginScreen(),
      },
    );
  }
}
