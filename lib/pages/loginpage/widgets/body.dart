import 'package:aplicacion_ejemplo/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';

class BoddyLogin extends StatefulWidget {
  BoddyLogin({Key? key}) : super(key: key);

  @override
  State<BoddyLogin> createState() => _BoddyLoginState();
}

class _BoddyLoginState extends State<BoddyLogin> {
  @override
  int suma(int a, int b) {
    return a + b;
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Center(
            child: Text(
          "My library",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
        )),
        Center(
          child: Image.asset(
            'assets/logolibrary.png',
            height: 150,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          width: 300,
          height: 400,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                      decoration: InputDecoration(
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: 250,
                  child: TextField(
                      decoration: InputDecoration(
                    labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  )),
                ),
              ),
              SizedBox(
                width: 150,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Sign In"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20)))),
              )
            ],
          ),
        ),
      ],
    );
  }
}
