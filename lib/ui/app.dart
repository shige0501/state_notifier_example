import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_notifier_example/ui/contents/content_page.dart';
import 'package:state_notifier_example/ui/login/login_page.dart';
import 'package:state_notifier_example/ui/splash/splash_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sample',
      initialRoute: '/',
      routes: {
        '/': (_) => SplashPage(),
        '/login': (_) => LoginPage(),
        '/contents': (_) => ContentPage()
      },
    );
  }
}