import 'package:factcalc/core/constant/color.dart';
import 'package:factcalc/view/homePage.dart';
import 'package:factcalc/widget/text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();
    bmiHome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Design.base,
      body: 
      Column(
        children: [
         
      Image.asset('assets/icon.jpeg',
      height:MediaQuery.of(context).size.height*0.9 ,),
      text(textName: "FactCalc", textSize: 25)
       ],
      ),
    );
  }
  Future<void> bmiHome()async{
    await Future.delayed( const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
  }
}