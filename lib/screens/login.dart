import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/homepage.dart';
import 'package:synergy/screens/usertypes.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isObscured = true;

  // ignore: non_constant_identifier_names
  Future<void> _PasswordCredentials() async {
    try {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Password Reset'),
            content: const Text(
                'A password reset email has been sent to your email address.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } catch (e) {
      // Handle any errors that occurred during the password reset process
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text(
                'An error occurred while resetting your password. Please try again later.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Welcome',
                  style: GoogleFonts.irishGrover(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 207, 196, 177),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset('assets/icons/person.png', height: 170,),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    hintStyle: GoogleFonts.italiana(
                        color: Color.fromARGB(255, 207, 196, 177)),
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 207, 196, 177))),
                    prefixIcon: Icon(Icons.email,
                        color: Color.fromARGB(255, 207, 196, 177)),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: GoogleFonts.italiana(
                        color: Color.fromARGB(255, 207, 196, 177)),
                    prefixIcon: const Icon(Icons.lock,
                        color: Color.fromARGB(255, 207, 196, 177)),
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 207, 196, 177))),
                    suffixIcon: IconButton(
                      icon: Icon(_isObscured
                          ? Icons.visibility_off
                          : Icons.visibility),
                      color: Color.fromARGB(255, 207, 196, 177),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Center(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.italiana(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(255, 207, 196, 177),
                  ),
                ),
                const SizedBox(height: 15),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dont Have an Account?Sign Up!',
                        style: GoogleFonts.italiana(
                          color: Color.fromARGB(255, 207, 196, 177),
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const UserType(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text.rich(
                  TextSpan(
                    text: ' Forgot Password?',
                    style: GoogleFonts.italiana(
                        color: Color.fromARGB(255, 207, 196, 177)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        _PasswordCredentials();
                      },
                  ),
                ),
                const Spacer(),
                const SizedBox(height: 85),
                Text('@Copyright SYNERGY 2024',
                    style: GoogleFonts.italiana(
                        color: Color.fromARGB(255, 207, 196, 177))),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
