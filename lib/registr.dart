import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/services.dart/authservice.dart';

class Registr extends StatefulWidget {
  const Registr({super.key});

  @override
  State<Registr> createState() => _RegistrState();
}

class _RegistrState extends State<Registr> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

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
              "CREATE ACCOUNT",
              style: TextStyle(
                color: const Color.fromARGB(220, 0, 147, 52),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(50.10),
              child: TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.text_fields,
                    color: const Color.fromARGB(220, 0, 147, 52),
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),

                  filled: true,
                  fillColor:const Color.fromARGB(255, 63, 57, 57),
                 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.0),
            Padding(
              padding: const EdgeInsets.all(50.10),
              child: TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 16, 174, 66),
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 63, 57, 57),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.10),
              child: TextField(
                controller: passwordcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color.fromARGB(255, 16, 174, 66),
                  ),
                  hintText: "password",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 63, 57, 57),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50.10),
              child: TextField(
                controller: confirmpasswordcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.password_outlined,
                    color: const Color.fromARGB(255, 182, 9, 9),
                  ),
                  hintText: "confirm password",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),

                  filled: true,
                  fillColor: const Color.fromARGB(255, 63, 57, 57),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                registr(
                  username: namecontroller.text,
                  email: emailcontroller.text,
                  password: passwordcontroller.text,
                  confirmpassword: confirmpasswordcontroller.text,
                  context: context,
                );
              },
              child: Text("REGISTER"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 42, 135, 11),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
