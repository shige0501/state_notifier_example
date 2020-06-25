import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_example/domain/repository/secure_repository.dart';
import 'package:state_notifier_example/ui/splash/splash_state.dart';

class SplashController extends StateNotifier<SplashState> with LocatorMixin {
  SplashController(this.context) : super(const SplashState());

  final BuildContext context;

  SecureRepository get secureRepository => read<SecureRepository>();

  Future<bool> isLoggedIn() async {
    final accessToken =
    await secureRepository.getString(SecureRepository.accessToken, '');

    return accessToken.isNotEmpty;
  }
}