import 'package:flutter/material.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SplashScreenView',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 16),
            RaisedButton(
              child: const Text('Get started!'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main');
              },
            ),
          ],
        ),
      ),
    );
  }
}
