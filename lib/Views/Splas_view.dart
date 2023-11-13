import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_setup_app/Views/Home_Page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return HomePage();
      }),);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: Center(
        child: Lottie.asset("assets/news.json",),
      ),
    );
  }
}
