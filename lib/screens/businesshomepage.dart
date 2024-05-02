import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/helpers/loginbackup.dart';
import 'package:synergy/screens/aboutus.dart';
import 'package:synergy/screens/businessprofile.dart';
import 'package:synergy/screens/contactus.dart';
import 'package:synergy/screens/explore.dart';
import 'package:synergy/screens/mencategory.dart';
import 'package:synergy/screens/womencategory.dart';

class BusinessHomepage extends StatefulWidget {
  const BusinessHomepage({super.key, required String description, required String imageUrl, required String title, required String businessname});

  @override
  State<BusinessHomepage> createState() => _BusinessHomepageState();
}

class _BusinessHomepageState extends State<BusinessHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Drawer(
 
        backgroundColor: Colors.black,
     
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(height: 10,),
            ListTile(
              leading: Image.asset('assets/icons/person.png', height: 400),
              title:  Text('My Profile',style: GoogleFonts.italiana(
              color: Color.fromARGB(255, 207, 196, 177), fontSize: (16), fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const BusinessProfile(title: '', description: '', imageUrl: '', businessname: '',),
                    ));
              },
            ),
            SizedBox(height: 10,),
             Divider(height: 10),
            
            ListTile(
              leading: const Icon(Icons.people,
                  color: Color.fromARGB(255, 207, 196, 177)),
              title: Text('About us',style: GoogleFonts.italiana(
              color: Color.fromARGB(255, 207, 196, 177), fontSize: (16), fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const AboutUs(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone,
                  color: Color.fromARGB(255, 207, 196, 177)),
              title: Text('Contact us',style: GoogleFonts.italiana(
              color: Color.fromARGB(255, 207, 196, 177), fontSize: (16), fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ContactUs(),
                    ));
              },
            ),
            SizedBox(height: 470),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const Login(),
                  ),
                );
              },
              child: Text(
                'Log Out',
                style: GoogleFonts.italiana(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Color.fromARGB(255, 207, 196, 177),
            ),
          ],
          
        ),
        
      ),
      backgroundColor: Color.fromARGB(255, 207, 196, 177),
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'SYNERGY',
          style: GoogleFonts.irishGrover(
              color: Colors.black, fontSize: (34), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        
          child: 
          Column(
            children: [
          Stack(children: [
        Image.asset(
          "assets/images/titlepicture.jpg",
          width: double.infinity,
          fit: BoxFit.cover
        ),

Positioned(
          bottom: 10,
          right: 10,
          child: 

        Column(
       
 
    children: [ 
      
      FloatingActionButton(
            
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const Explore(),
                ),
              );
            },
             
            child:Text(
              'explore',
                
              style: GoogleFonts.italiana(
                color: Color.fromARGB(255, 207, 196, 177),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                 backgroundColor: Colors.black,
                 
                ),
            
            ),
            
          ),
        ],
      
        ),
),
        
      ]),
    SizedBox(height: 0,),
    Stack(
       children: [
   
      Image.asset(
          "assets/images/Menpicture(1).jpg",
          width: double.infinity,
          fit: BoxFit.cover
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Column(
            children: [
              FloatingActionButton(
            
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MenCategory(),
                ),
              );
            },
             
            child:Text(
              'view',
                
              style: GoogleFonts.italiana(
                color: Color.fromARGB(255, 207, 196, 177),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                 backgroundColor: Colors.black,
                 
                ),
            
            ),
            
          ),

            ],
          ),
        ),

    ],
    ),
      SizedBox(height: 0,),
     Stack(
       children: [
   
      Image.asset(
          "assets/images/woman.jpg",
          width: double.infinity,
          fit: BoxFit.cover
        ),
        Positioned(
          bottom: 5,
          right: 10,
          child: Column(
            children: [
              FloatingActionButton(
            
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const WomenCategory(),
                ),
              );
            },
             
            child:Text(
              'view',
                
              style: GoogleFonts.italiana(
                color: Color.fromARGB(255, 207, 196, 177),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                 backgroundColor: Colors.black,
                 
                ),
            
            ),
            
          ),

            ],
          ),
        ),

    ],
    ),
      ],
    
      
      ),

          // Image tag

          ),
    );
  }
}