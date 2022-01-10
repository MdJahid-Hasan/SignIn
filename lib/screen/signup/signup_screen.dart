import 'dart:html';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const routeName = "/signupscreen";

  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController firstNameEditingController = TextEditingController();
  TextEditingController lastNameEditingController = TextEditingController();
  TextEditingController phoneNumberEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (EmailValidator.validate(value!)) {
                    return null;
                  } else {
                    return "please enter a vaild email";
                  }
                },
                controller: emailEditingController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length > 8) {
                    return null;
                  } else {
                    return "Password must be a minimum of 8 charactrs";
                  }
                },
                obscureText: true,
                controller: passwordEditingController,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isNotEmpty) {
                    return null;
                  } else {
                    return "Please enter first name";
                  }
                },
                controller: firstNameEditingController,
                decoration: InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isNotEmpty) {
                    return null;
                  } else {
                    return "Please enter last name";
                  }
                },
                controller: lastNameEditingController,
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.length > 11) {
                    return null;
                  } else {
                    return "Phone Number must be a minimum of 11 charactrs";
                  }
                },
                controller: phoneNumberEditingController,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String email = emailEditingController.text;
                    String password = passwordEditingController.text;
                    String firstname = firstNameEditingController.text;
                    String lastname = lastNameEditingController.text;
                    String phonenumber = phoneNumberEditingController.text;

                    print(
                        email + password + firstname + lastname + phonenumber);
                  }
                },
                child: Text("Sign up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
