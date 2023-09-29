import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepage.dart';
void main(){
  runApp(
    MaterialApp(
      home: SafeArea(
        child:Homepage(),
      ),
    )
  );
}