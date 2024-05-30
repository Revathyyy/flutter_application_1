import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './calculate.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
           Provider.of<CalculatorProvider>(context,listen: false).setValue("=");
      },
         child: Container(child: Center(
                                 child: Text("=",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50
                                 ),), ),
                                                   height: 160,
                                                   width: 70,
                                                   decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius: BorderRadius.circular(10),
                                                  
                                                  
                                         ),
                                       ),
    );
    
  }
}