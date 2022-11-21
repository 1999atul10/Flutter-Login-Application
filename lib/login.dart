import 'package:flutter/material.dart';
import 'package:flutter_assignment_login/EventPage.dart';
import 'package:flutter_assignment_login/WrongDetails.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String roll_no ="";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Student Name $name Roll No:-$roll_no"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: Column(
                children: [
                  Image.asset("assets/bciit.png", fit: BoxFit.fill),
                  const Text(
                    "BCIIT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "User Name",
                      hintText: "Enter User Name",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Roll No.",
                    ),
                    onChanged: (value)
                    {
                      roll_no=value;
                      setState(() {

                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 500,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if(name!="" || roll_no!=""){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>EventPage()),);


                        }
                        else
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WrongDetailsPage()),);
                          }
                      }
                      ,
                      child: const Text(
                        "Login",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
