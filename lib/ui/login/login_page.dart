import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/ui/login/login_controller.dart';
import 'package:state_notifier_example/ui/login/login_state.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlineButton(
          child: const Text('ログイン'),
          onPressed: context
                  .select<LoginState, bool>((state) => state.loginButtonEnabled)
              ? () {
                  context.read<LoginController>().login(context);
                }
              : null,
        ),
      ),
    );
  }
}
