
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_setup_app/Views/Home_Page.dart';
import 'package:news_setup_app/Views/Splas_view.dart';


void main(){
  runApp(NewsApp());

}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashView(),
      // AnimatedSplashScreen(
      //   splash: Lottie.asset("assets/news.json"),
      //   backgroundColor: Colors.black,
      //   splashIconSize: double.infinity,
      //   nextScreen: HomePage(),
      //   duration: 2500,
      // ),
    );
  }
}
