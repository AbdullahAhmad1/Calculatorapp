import 'package:calculatorapp/components/button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                Align
                                (alignment: Alignment.centerRight,
                                child: 
                                Text(userinput.toString(),style: const TextStyle(fontSize: 30,color: Colors.white),)),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(answer.toString(),style: const TextStyle(fontSize: 30,color: Colors.white),), 
                                ],
                  
                              ),
                  ),
                ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Column(
                        children: [
                        Row(
                        children: [
                          MyButton(title: 'C',onPress: () {
                            userinput = '';
                            answer = '';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '+/-',onPress: (){
                            userinput += '+/-';
                            setState(() {
                              
                            });
                          },),
                          MyButton(title: '%',onPress :(){
                            userinput += '%';
                            setState(() {
                              
                            });
                          },),
                          MyButton(title: '/',color: Colors.orange,onPress: () {
                            userinput += '/';
                            setState(() {
                              
                            });
                          },),
                        ],
                        ),
                         Row(
                        children: [
                          MyButton(title: '7',onPress: () {
                            userinput += '7';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '8',onPress: () {
                            userinput += '8';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '9',onPress: () {
                            
                            userinput += '9';
                            setState(() {
                              
                            });
                          },),
                          MyButton(title: 'x',color: Colors.orange,onPress: () {
                            userinput += '*';
                            setState(() {
                              
                            });
                            
                          },),
                        ],
                        ),
                       Row(
                        children: [
                          MyButton(title: '4',onPress: () {
                            userinput += '4';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '5',onPress: () {
                            userinput += '5';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '6',onPress: () {
                            userinput += '6';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '-',color: Colors.orange,onPress: () {
                            userinput += '-';
                            setState(() {
                              
                            });
                            
                          },),
                        ],
                        ),
                         Row(
                        children: [
                          MyButton(title: '1',onPress: () {
                            
                            userinput += '1';
                            setState(() {
                              
                            });
                          },),
                          MyButton(title: '2',onPress: () {
                            userinput += '2';
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '3',onPress: () {
                            
                            userinput += '3';
                            setState(() {
                              
                            });
                          },),
                          MyButton(title: '+',color: Colors.orange,onPress: () {
                            userinput += '+';
                            setState(() {
                              
                            });
                            
                          },),
                        ],
                        ),
                         Row(
                        children: [
                          MyButton(title: '0',onPress: () {
                            userinput += '0';
                            setState(() {
                              
                            });
                            
                          },),
                           MyButton(title: '.',onPress: () {
                            
                            userinput += '.';
                            setState(() {
                              
                            });
                          },),
                          MyButton(title: 'DEL',onPress: () {
                            userinput = userinput.substring(0,userinput.length-1);
                            setState(() {
                              
                            });
                            
                          },),
                          MyButton(title: '=',color: Colors.orange,onPress: () {
                            equalPress();
                            setState(() {
                              
                            });
                            
                          },),
                        ],
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
              ),
          
            ],
          ),
      ),

    ),
    );
}
   void equalPress()
   {
    String finalUserInput = userinput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
   }
}