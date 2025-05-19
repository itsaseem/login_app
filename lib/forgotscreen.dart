import 'package:flutter/material.dart';
import 'package:flutter_application_1/services.dart/authservice.dart';

class Forgotscreen extends StatefulWidget {
  const Forgotscreen({super.key});

  @override
  State<Forgotscreen> createState() => _ForgotscreenState();
}

class _ForgotscreenState extends State<Forgotscreen> {
  TextEditingController emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "FORGOT PASSWORD",
              style: TextStyle(
                color: Colors.green,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
          
         TextField(
          controller: emailcontroller,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.green),
                  hintText: "Enter email",
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            
            SizedBox(height: 20),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {forgotpassword(email: emailcontroller.text, context: context);},
                child: Text("SEND CODE"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            
        ),
 ]     ),
    ));
  }
}
