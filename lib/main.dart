
import 'package:flutter/material.dart';
import 'package:home_ui/homepae.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       title: "myaaapp",
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         fontFamily: "Montserrat"
       ),
       home: HomePage(),
    );
  }
}