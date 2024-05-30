import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';
import 'package:flutter_application_1/calculate.dart';
import 'package:provider/provider.dart';
import './button.dart';
import './button_inputs.dart';
import './calculate.dart';
import './home.dart';
import './equal_button.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({super.key, required this.controller});
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(
      builder: (context,Provider,_) {
        return Scaffold(
          // backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Calculator"),
            centerTitle: true,
            backgroundColor: Colors.black26,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          body:Container(
            // color: Colors.blue,
            child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: TextField(
                   controller: Provider.compController,
                  // controller: controller,
                  style: TextStyle(fontSize: 40),
                  decoration: InputDecoration(
                  border: 
                  OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide: BorderSide.none
                  ),
                  fillColor: Colors.black26,
                  // filled: true,
                  ),
                  readOnly: true,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height:500,
                  // color: Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:List.generate(4, (index) => buttonList[index]),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:List.generate(4, (index) => buttonList[index+4]),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:List.generate(4, (index) => buttonList[index+8]),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                    Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:List.generate(3, (index) => buttonList[index+12]),
                              ),
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:List.generate(3, (index) => buttonList[index+15]),
                              ),
                              
                                ],
                              ),
                            ),
                              Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: CalculateButton(),
                           )
                          ],
                        )
                      ],
                    ),
                ),
              ),
             
            ],
          ),
          ) ,
        );
      }
    );
  }
}
