
import 'package:factcalc/core/constant/color.dart';
import 'package:factcalc/view/bmiResult.dart';
import 'package:factcalc/widget/appBar.dart';
import 'package:factcalc/widget/button.dart';
import 'package:factcalc/widget/container.dart';
import 'package:factcalc/widget/text.dart';
import 'package:flutter/material.dart';
TextEditingController weightController = TextEditingController();
TextEditingController heightController =TextEditingController();
TextEditingController ageController =TextEditingController();
double bmi=0.0;
String category="";
class NextPage extends StatefulWidget {
  const NextPage(String s,  {super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  void calcBMI(){
    double weight=double.parse(weightController.text);
    double height=double.parse(heightController.text)/100;
    // setState(() {
      bmi=weight/(height*height);
    
      if(bmi<18.5){
        category="Underweight";
      }
      else if(bmi<25){
        category="Normal";
      }
      else if(bmi<30){
        category="Overweight";
      }
      else if(bmi<35){
        category="Obesity";
      }
      else{
        category="Extreme obesity";
      }
     
    // });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       backgroundColor: Design.base,
      appBar: appbar1(context),
      body:    
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
          child: Column(   
            children: [
            
           text(textName: "How tall are you ?",textSize: 20),
           SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            container1(
              heightController
            ),
        
            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
            text(textName: "What’s your weight ?",textSize: 20),
            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            container1(
               weightController 
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
             text(textName: "What’s your age ?",textSize: 20),
              SizedBox(height: MediaQuery.of(context).size.height*0.025,),
              container1(
                ageController
              ),
          SizedBox(height: MediaQuery.of(context).size.height*0.09,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               button(
                text: 'Clear',
                buttonAction: () {
                    weightController.clear();
                    heightController.clear();
                    ageController.clear();
                },),
                 button(
                text: 'Calculate',
                buttonAction: () {  
                  calcBMI();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BMIResult(bmi: bmi,)));
                  
                },)
        
           ]),
           
            ])
        ),
      )
    );
  }
}