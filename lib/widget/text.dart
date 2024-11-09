import 'package:flutter/material.dart';

text({required String textName,required double textSize}){
 return Text(textName,
        // ignore: prefer_const_constructors
        style: TextStyle(color: Color.fromRGBO(141, 54, 95, 1),
        fontWeight: FontWeight.bold,fontSize: textSize),);
}

