import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_example/domain/repository/secure_repository.dart';
import 'package:state_notifier_example/ui/login/login_state.dart';
import 'package:state_notifier_example/ui/splash/splash_state.dart';

class LoginController extends StateNotifier<LoginState> with LocatorMixin {
  LoginController() : super(const LoginState());

  SecureRepository get secureRepository => read<SecureRepository>();

  void login(BuildContext context) {
    state = state.copyWith(loginButtonEnabled: false);

    // ログイン処理。本当は結果を元に 成功時と失敗時の処理をする
    secureRepository.putString(SecureRepository.accessToken, 'text_token');

    state = state.copyWith(loginButtonEnabled: true);

    Navigator.of(context).pushReplacementNamed('/contents');
  }
}