import 'package:flutter/material.dart';
import 'package:flutter_application_1/forgotscreen.dart';
import 'package:flutter_application_1/services.dart/authservice.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "LOGIN SPOTIFY",
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: const Color.fromARGB(255, 74, 83, 244),
                  ),
                  hintText: "Enter your E-mail",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 16, 174, 66),
                  ),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 46, 54, 60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  hintText: "Enter password",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 16, 174, 66),
                  ),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 46, 54, 60),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ), 
            ),TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgotscreen()));
            }, child:Text("Forgot password")),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  login(
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
                    context: context,
                  );
                },
                child: Text("login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 42, 135, 11),
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
