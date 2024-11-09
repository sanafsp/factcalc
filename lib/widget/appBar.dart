
import 'package:factcalc/core/constant/color.dart';
import 'package:flutter/material.dart';

appbar1(context) {
  return AppBar(
   backgroundColor: Design.base,
    leading:IconButton(onPressed: (){Navigator.pop(context);}, 
    icon: const Icon(Icons.arrow_back,color:  Color.fromRGBO(141, 54, 95, 1),),)
    
  );
}
