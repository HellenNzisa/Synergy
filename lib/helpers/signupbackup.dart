
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'homepage.dart';

class SignUp extends StatefulWidget {
  final String userTypeId;
  SignUp({required this.userTypeId});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =TextEditingController();
  Future<void> _signUp() async {
    final String name = _nameController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;
    final String confirmPassword = _confirmPasswordController.text;
    if (password != confirmPassword) {
      // Show an error dialog if passwords don't match showDialog
      (
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Error'),
              content: Text('Passwords do not match.'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
      );
      return;
    }
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/api/register'),
      body: {
        'name': name,
        'email': email,
        'password': password,
        'user_type_id': widget.userTypeId,
        'password_confirmation': confirmPassword,
      },
    );
    if (response.statusCode == 201) {
      // Registration successful, navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      //Registration failed, show an error dialog
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Registration Failed'),
          content: Text('An error occurred during registration.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  }

  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi! Welcome to SYNERGY',
                style: GoogleFonts.irishGrover(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 207, 196, 177),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Names",
                  hintStyle: GoogleFonts.italiana(
                      color: Color.fromARGB(255, 207, 196, 177)),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 207, 196, 177))),
                  prefixIcon: Icon(Icons.person,
                      color: Color.fromARGB(255, 207, 196, 177)),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
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
              const SizedBox(height: 16),
              TextFormField(
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
                    icon: Icon(
                        _isObscured ? Icons.visibility_off : Icons.visibility),
                    color: Color.fromARGB(255, 207, 196, 177),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: _isObscured,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: GoogleFonts.italiana(
                      color: Color.fromARGB(255, 207, 196, 177)),
                  prefixIcon: const Icon(Icons.lock,
                      color: Color.fromARGB(255, 207, 196, 177)),
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 207, 196, 177))),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscured ? Icons.visibility_off : Icons.visibility),
                    color: Color.fromARGB(255, 207, 196, 177),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
                    'Sign Up',
                    style: GoogleFonts.italiana(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  backgroundColor: Color.fromARGB(255, 207, 196, 177),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

