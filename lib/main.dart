import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculate.dart';
import 'package:provider/provider.dart';
import './home.dart';
import './calculate.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
   return  ChangeNotifierProvider(
    create: (context) => CalculatorProvider(),
     child: MaterialApp(
      title: "Demo App",
     home:MyCalculator(controller: TextEditingController(),),
     ),
   );
  }
}