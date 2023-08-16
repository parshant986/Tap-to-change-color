import 'package:flutter/material.dart';
import 'package:project_1/src/view/utilis/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
Color currentColor = kRedColor;
 void clickHere() {
  setState(() {
    currentColor = currentColor == kRedColor? kBlueColor : kRedColor;
  });
  
}
// void clickHere() {
//   if (currentColor == kRedColor) {
//     currentColor = kBlueColor;
//   } else {
//     currentColor = kRedColor;
//   }
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("Tap to Color Change"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 1,
      ),
      body:
       Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(onPressed: (){
              clickHere();
              print("IT IS TAPPED");
            }, 
            child: 
            Container(decoration: BoxDecoration(color: Colors.teal, shape: BoxShape.circle),
              height: 100,
              width: 100
              ), 
            ),
            Container(
              decoration: BoxDecoration(color: currentColor, shape: BoxShape.rectangle),
              height: 200,
              width: 200
            ),
          ],
        ),
      ),
    );
  }
}
