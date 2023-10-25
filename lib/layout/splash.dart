import 'package:down_app/layout/home_layout.dart';
import 'package:down_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: Text('Home'),
        onPressed: () {
          navigateTo(context: context, widget: HomeLayout());
        },
      )),
    );
  }
}
