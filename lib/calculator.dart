import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
 double result=0;
 void calculate(){
   double heightd=double.parse(height.text);
   double weightd=double.parse(weight.text);
double heightsquare=heightd*heightd;
result=weightd/heightsquare;
setState(() {

});
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title:Center(child: Text('BMI calculator'),),),
      body:Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: height,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purpleAccent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),

                ),
                hintText: 'height'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: weight  ,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purpleAccent,
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(15),

                ),
                hintText: 'weight'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(style:TextButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: (){calculate();}, child:Text('Calculate',style: TextStyle(color: Colors.white),) ),
            Text('Result')




          ],
        ),
      ),
      
    );
  }
}
