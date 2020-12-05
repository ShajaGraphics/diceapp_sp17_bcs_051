
import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:quizzler/retry.dart';
// import 'quiz_brain.dart';
import 'dart:ui';


void main() {
  runApp(SplashScreen());
}
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) =>DiceeApp ())));
  } //<- Creates an object that fetches an image.
  // var image = new Image(
  //     image: AssetImage(
  //         'asset/quiz.png'),
  //     height:300);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient:  LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.blueAccent,
                Colors.grey,
                Colors.blueAccent,
              ]
          ),
        ),

        child: Column(
          children: <Widget>[
            Image(
                image: AssetImage(
                    'images/profile.jpg'),
                height:300),
            Text("Muhammad Shahbaz Iqbal ",style:TextStyle(fontSize: 30,color: Colors.blue)),
            SizedBox(height: 5,),
            Text(" sp17-bcs-051",style:TextStyle(fontSize: 30,color: Colors.blue)),

          ],
        )
    );
  }
}


