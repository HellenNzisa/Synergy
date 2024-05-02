import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/contactus.dart';
import 'package:synergy/screens/homepage.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Color.fromARGB(255, 207, 196, 177)),
         onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(),
                    ));
              },
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'MY PROFILE',
                  style: GoogleFonts.irishGrover(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 207, 196, 177),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset('assets/icons/person.png', height: 170,),
                const SizedBox(height: 20),
                  Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hellen Nzisa',
                        style: GoogleFonts.italiana(
                          fontSize: (24),
                          color: Color.fromARGB(255, 207, 196, 177),
                          fontWeight: FontWeight.bold,
                         
                       
                          
                        ),
                        
                      ),
                       
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                 Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'hmutemi74@gmail.com',
                        style: GoogleFonts.italiana(
                          fontSize: (24),
                          color: Color.fromARGB(255, 207, 196, 177),
                          fontWeight: FontWeight.bold,
                         
                       
                          
                        ),
                        
                      ),
                       
                    ],
                  ),
                ),
                
                
                const SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Want to register a brand?Contact Us!',
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
                                    const ContactUs(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                
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