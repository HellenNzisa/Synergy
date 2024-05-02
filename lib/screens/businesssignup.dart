import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/businesshomepage.dart';


class BusinessSignUp extends StatefulWidget {
  const BusinessSignUp({super.key});

  @override
  State<BusinessSignUp> createState() => _BusinessSignUpState();
}

class _BusinessSignUpState extends State<BusinessSignUp> {
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
                'Sign up your brand with SYNERGY!',
                style: GoogleFonts.irishGrover(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 207, 196,177),
                ),
           
              ),
              const SizedBox(height: 20),
              TextFormField(
               decoration: InputDecoration(
                  hintText: "Enter Business Name",
                  hintStyle:GoogleFonts.italiana(color:Color.fromARGB(255, 207, 196,177)),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color:Color.fromARGB(255, 207, 196,177) )
                  ),
                  prefixIcon: Icon(Icons.person,color: Color.fromARGB(255, 207, 196,177)),
                   
                ),
              ),
              const SizedBox(height: 16),
               TextFormField(
               decoration: InputDecoration(
                  hintText: "Enter Business Description",
                  hintStyle:GoogleFonts.italiana(color:Color.fromARGB(255, 207, 196,177)),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color:Color.fromARGB(255, 207, 196,177) )
                  ),
                  prefixIcon: Icon(Icons.person,color: Color.fromARGB(255, 207, 196,177)),
                   
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Business Email",
                  hintStyle:GoogleFonts.italiana(color:Color.fromARGB(255, 207, 196,177)),
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color:Color.fromARGB(255, 207, 196,177) )
                  ),
                  prefixIcon: Icon(Icons.email,color: Color.fromARGB(255, 207, 196,177)),
                   
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
               obscureText: _isObscured,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle:GoogleFonts.italiana(color:Color.fromARGB(255, 207, 196,177)),
                  prefixIcon: const Icon(Icons.lock,color: Color.fromARGB(255, 207, 196,177)),
                  
                  border: const UnderlineInputBorder(
                     borderSide: BorderSide(color:Color.fromARGB(255, 207, 196,177) )
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                     color: Color.fromARGB(255, 207, 196,177),
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
                  hintStyle:GoogleFonts.italiana(color:Color.fromARGB(255, 207, 196,177)),
                  prefixIcon: const Icon(Icons.lock,color: Color.fromARGB(255, 207, 196,177)),
                  border: const UnderlineInputBorder(
                     borderSide: BorderSide(color:Color.fromARGB(255, 207, 196,177) )
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
                     color: Color.fromARGB(255, 207, 196,177),
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
                        builder: (BuildContext context) => const BusinessHomepage(description: '', imageUrl: '', title: '', businessname: '',),
                      ),
                    );
                  },
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.italiana(
                      textStyle: TextStyle(color:Colors.black,
                          
                          fontSize:15,
                          fontWeight: FontWeight.bold
                          )),
                          
                ),
                backgroundColor:Color.fromARGB(255, 207, 196,177),
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