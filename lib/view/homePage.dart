
import 'package:factcalc/core/constant/color.dart';
import 'package:factcalc/view/nextPage.dart';
import 'package:factcalc/widget/appBar.dart';
import 'package:factcalc/widget/button.dart';
import 'package:factcalc/widget/text.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  
    String? selectedGender;

  void gender() {
    if (selectedGender != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NextPage(selectedGender!)),
      );
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Design.base,
      appBar: AppBar(
         backgroundColor: Design.base,
        title:  text(textName: "BMI Calculator", textSize: 25),
        centerTitle: true,
      ),
      body:  
        Padding(
         // ignore: prefer_const_constructors
         padding: EdgeInsets.all(20.0),
         child: Column(
           children: [
           text(textName: "What’s Your Gender?",textSize: 20),
          //  SizedBox(height: MediaQuery.of(context).size.height*0.6,
          //  width:MediaQuery.of(context).size.width*0.9 ,),
           Image.asset('assets/genderImage.jpeg',height:  MediaQuery.of(context).size.height*0.45,),
           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             button(
              text: 'Female',
              buttonAction: () {  
                setState(() {
                      selectedGender = 'Female';
                    });
              },
            ), 
              button(
              text:"Male" ,
              buttonAction: () {  
                setState(() {
                      selectedGender = 'Male';
                    });
              },
            ), ]),
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
           button(
              text: 'Next',
              buttonAction: () {  
               gender();
              },
            ), 
           ],
         ),
       ),
    );
  }
}