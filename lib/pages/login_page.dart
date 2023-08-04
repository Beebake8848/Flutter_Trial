// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  // ignore: non_constant_identifier_names

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  // ignore: unused_field
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  "assets/images/login_image.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Enter Username",
                              labelText: "Username",
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            }),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            } else if (value.length < 6) {
                              return "Password Length should be atleast 6";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Material(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 50 : 8),
                          child: InkWell(
                            onTap: () => moveToHome(context),
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              height: changeButton ? 50 : 150,
                              width: 50,
                              // color: Colors.deepPurple,
                              alignment: Alignment.center,

                              // shape: Changebutton
                              //     ? BoxShape.circle
                              //     : BoxShape.rectangle,

                              child: changeButton
                                  ? const Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                            ),
                          ),
                        ),
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //   },
                        //   style: TextButton.styleFrom(
                        //       minimumSize: const Size(120, 40)),
                        //   child: const Text("Login"),
                        // )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
