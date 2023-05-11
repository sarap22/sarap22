<<<<<<< HEAD
=======
import 'package:coffeepets/screen/principal.dart';
>>>>>>> 1db948d (proyecto flutter adso6)
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {Future.delayed(Duration(seconds: 5),(){
<<<<<<< HEAD
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> pantallaU()));
=======
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> principal()));
>>>>>>> 1db948d (proyecto flutter adso6)
  });}
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200, width: 200, child: Lottie.asset("img/20720-ostrich.json"),)
          ],
        ),
      ),
    );
  }
}
