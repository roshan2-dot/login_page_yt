import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {});

      Navigator.pushReplacementNamed(context, "/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 50),
                    alignment: Alignment.center,
                    child: Text('Hello Again!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.questrial(
                            textStyle: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )))),
                Container(
                    width: 180,
                    margin: const EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Text('Welcome back you have been missed!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.questrial(
                            textStyle: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )))),
                ClipRRect(
                  child: Image.asset(
                    'assets/images/welcome.png',
                    width: 250,
                    height: 250,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 10),
                    alignment: Alignment.center,
                    child: Text('Please enter the details below to continue',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.questrial(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        )))),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade800,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter username',
                              border: InputBorder.none,
                              hintStyle: GoogleFonts.questrial(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Username cannot be empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade800,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              hintStyle: GoogleFonts.questrial(
                                  textStyle: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ))),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password cannot be empty';
                            } else if (value.length < 6) {
                              return 'Password length should be atleast 6';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        alignment: Alignment.centerRight,
                        child: Text("Forgot Password?",
                            style: GoogleFonts.questrial(
                                textStyle: const TextStyle(
                              fontSize: 12,
                            ))),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => movetoHome(context),
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 226, 73, 73),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.questrial(
                            textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'New here?',
                        style: GoogleFonts.questrial(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ))),
                    TextSpan(
                        text: 'Create an account',
                        style: GoogleFonts.questrial(
                            textStyle: const TextStyle(
                          fontSize: 12,
                          color: Colors.blue,
                        )))
                  ])),
                )
              ],
            ),
          ),
        ));
  }
}
