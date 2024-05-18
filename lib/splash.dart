import 'package:flutter/material.dart';
import 'package:minidictionary/api.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration( milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyMealsCategory(),
        )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Image.asset('assets/ok.png',
              ),
            ),
            Text('Welcome To Minidictionary',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ]
        ),
      ),
    );
  }
}
