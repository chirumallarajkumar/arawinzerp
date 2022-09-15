import 'package:arawinzerp/loginuser.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController controllerid = TextEditingController();
  final TextEditingController controllerpwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.transparent),
                height: MediaQuery.of(context).size.height / 4.8,
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: const Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
              ),
              Text(
                "Welcome Arawinz ERP",
                style: TextStyle(
                    color: Color.fromARGB(255, 115, 63, 124),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                  controller: controllerid,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 244, 244, 245),
                      filled: true,
                      labelText: "User Id*",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)))),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: controllerpwd,
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Color.fromARGB(255, 244, 244, 245),
                      filled: true,
                      labelText: "Password*",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 2.0,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)))),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  fetchAlbum();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, letterSpacing: 1),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  minimumSize: Size.fromHeight(40),
                  padding: EdgeInsets.all(15),
                  // Background color
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
