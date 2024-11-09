
import 'package:factcalc/core/constant/color.dart';
import 'package:factcalc/view/nextPage.dart';
import 'package:factcalc/widget/appBar.dart';
import 'package:factcalc/widget/text.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatefulWidget {
  const BMIResult({super.key, required double bmi});

  @override
  State<BMIResult> createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Design.base,
      appBar: appbar1(context),
      body: 
    Center(
      child: Column(
        children: [
           text(textName: "Result",textSize: 30),
             SizedBox(height: MediaQuery.of(context).size.height*0.2,
           width:MediaQuery.of(context).size.width*0.9 ,),
          Text("BMI:${bmi.toStringAsFixed(2)}",
          style: const TextStyle(color:  Color.fromRGBO(141, 54, 95, 1,),
          fontSize: 25,fontWeight: FontWeight.bold),),
          Text("aafgh:$category",
          style: const TextStyle(color:  Color.fromRGBO(141, 54, 95, 1,),
          fontSize: 25,))
        ],
      ),
    ),);
  }
}