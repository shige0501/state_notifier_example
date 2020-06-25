import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/ui/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<dynamic>.delayed(const Duration(seconds: 3)).then((dynamic value) {
      context.read<SplashController>().isLoggedIn().then((value) {
        Navigator.of(context).pushReplacementNamed(value ? "/contents" : "/login");
      });
    });

    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}