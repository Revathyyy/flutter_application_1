import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculate.dart';
import 'package:provider/provider.dart';
import './home.dart';
import './button_inputs.dart';
import 'calculate.dart';
class Buttons extends StatelessWidget {
  const Buttons({
    super.key,required this.label,this.textColor=Colors.white
    });
final String label;
final Color textColor;

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Padding(
                              padding: EdgeInsets.all(11.0),
                              child: CircleAvatar(radius: 35,
                              backgroundColor: Colors.black54,
                              child: Text(label,
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:textColor),
                              ),),
                            ),
    );

    
  }
}