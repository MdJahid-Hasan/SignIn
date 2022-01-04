import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 25,
                ),
                TextField(
                  decoration: InputDecoration(
                    //labelText: "User Namae",
                    hintText: "User Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    //labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Log In",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)))),
                  ),
                ),
                Container(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    "or",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 16,
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue)))),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        color: Colors.blue,
                        onPressed: () {},
                        //icon: FaIcon(FontAwesomeIcons.facebook),
                        icon: FaIcon(FontAwesomeIcons.facebook),
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => RadialGradient(
                          center: Alignment.topLeft,
                          radius: 1.0,
                          colors: [
                            Colors.green,
                            Colors.red,
                            Colors.yellow,
                            Colors.blue
                          ],
                          tileMode: TileMode.clamp,
                        ).createShader(bounds),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: FaIcon(FontAwesomeIcons.google),
                        ),
                      ),
                      IconButton(
                        color: Colors.blue,
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.twitter),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
