import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier_example/ui/splash/splash_controller.dart';

class SplashPage extends StatelessWidget {
  Future<void> _onInit(BuildContext context) async {
    final controller = Provider.of<SplashController>(context, listen: false);
    final isLogin = await controller.handleInit();
    await Navigator.of(context).pushReplacementNamed(isLogin ? '/contents' : '/login');
  }

  @override
  Widget build(BuildContext context) {
    _onInit(context);
    return const Scaffold(
      body: Center(
        child: Text('Splash'),
      ),
    );
  }
}