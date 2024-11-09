
import 'package:flutter/material.dart';                  
button({required String text,void Function()? buttonAction}){
// ignore: sort_child_properties_last
return  ElevatedButton(onPressed: buttonAction, child: Text(text,style: const TextStyle(color: Color.fromRGBO(141, 54, 95, 1)),),
    style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(241, 133, 192, 1)),
    );
}