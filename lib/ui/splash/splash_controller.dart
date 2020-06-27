import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_example/domain/repository/secure_repository.dart';
import 'package:state_notifier_example/ui/splash/splash_state.dart';

class SplashController extends StateNotifier<SplashState> with LocatorMixin {
  SplashController() : super(const SplashState());

  SecureRepository get secureRepository => read<SecureRepository>();

  Future<bool> handleInit() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    return isLoggedIn();
  }

  Future<bool> isLoggedIn() async {
    final accessToken =
    await secureRepository.getString(SecureRepository.accessToken, '');

    return accessToken.isNotEmpty;
  }
}