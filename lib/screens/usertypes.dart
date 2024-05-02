import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'signup.dart';

class UserType extends StatefulWidget {
  const UserType({super.key});

  @override
  _UserTypeState createState() => _UserTypeState();
}

class _UserTypeState extends State<UserType> {
  List<dynamic> _userTypes = [];
  String _selectedUserType = '';
  @override
  void initState() {
    super.initState();
    _fetchUserTypes();
  }

  Future<void> _fetchUserTypes() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/user_type'));
    if (response.statusCode == 200) {
      setState(() {
        _userTypes = json.decode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
                  'SIGN UP as',
                  style: GoogleFonts.irishGrover(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 207, 196, 177),
                  ),
                ),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: _selectedUserType,
          onChanged: (String? newValue) {
            setState(() {
              _selectedUserType = newValue!;
            });
          },
          items: _userTypes.map((userType) {
            return DropdownMenuItem<String>(
              value: userType['id'].toString(),
              child: Text(userType['name']),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUp(userTypeId: _selectedUserType),
            ),
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
