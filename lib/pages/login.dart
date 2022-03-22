import 'package:flutter/material.dart';
import 'package:sam/pages/dashboard.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image.asset("assets/images/logo.png",
                fit: BoxFit.cover),

            SizedBox(
                height: 20.0
            ),
            Text(
              "Welcome",
              style:TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
                height: 20.0
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),

                  SizedBox(
                      height: 20.0
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}