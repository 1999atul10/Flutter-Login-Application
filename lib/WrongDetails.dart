import 'package:flutter/material.dart';
import 'package:flutter_assignment_login/login.dart';

class WrongDetailsPage extends StatelessWidget {
  const WrongDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData.dark(),
      home: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 350),
          child: Column(
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              }, child: const Text(
                "Invalid Credentials Go Back To Login Screen"
              ))
            ],
          ),
        ),
      ),
    );
  }
}
