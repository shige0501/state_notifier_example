import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/domain/repository/secure_repository.dart';
import 'package:state_notifier_example/ui/app.dart';
import 'package:state_notifier_example/ui/login/login_controller.dart';
import 'package:state_notifier_example/ui/login/login_state.dart';
import 'package:state_notifier_example/ui/splash/splash_controller.dart';
import 'package:state_notifier_example/ui/splash/splash_state.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider(create: (_) => SecureRepository()),
          StateNotifierProvider<SplashController, SplashState>(
              create: (context) => SplashController(context)),
          StateNotifierProvider<LoginController, LoginState>(
              create: (_) => LoginController()),
        ],
        child: App(),
      ),
    );
