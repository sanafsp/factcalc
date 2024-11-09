import 'package:flutter/material.dart';

container1(TextEditingController name){
return Container(
             height:45,
            width:160,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15) ,
            border: Border.all(color: Colors.black,width: 2)),
            child: Center(
              child: TextFormField(
                controller: name,
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                border: InputBorder.none),
                keyboardType: TextInputType.number,),
            ),
              );
}