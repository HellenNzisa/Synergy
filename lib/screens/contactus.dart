import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/homepage.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255,207, 196, 177),
      appBar: AppBar(
        title: Text(
          'CONTACT US',
          style: GoogleFonts.irishGrover(
              color: Colors.black, fontSize: (40), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
         leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Colors.black),
         onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(),
                    ));
              },
        ),
        ),
        body: SingleChildScrollView(
          child: Column(
          
        children:[
          Container(
          padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
         child: Text("Welcome to SYNERGY, where collaboration and innovation meet! We're excited to hear from you and explore how we can create something amazing together. Whether you have questions, feedback, or a brilliant idea to share, your insights are invaluable to us.",
         textAlign: TextAlign.center,
            style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w600),
              
        ),
          ),
        SizedBox(height: 0),
         Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text("Reach Out to Us!",
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.bold),
),
),
SizedBox(height: 5),
Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text("Email",
textAlign: TextAlign.left,
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.bold),
),
),
Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text("Connect with us at connect@synergyapp.com — your thoughts are the sparks that ignite our innovation engine!",
textAlign: TextAlign.center,
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w500),
),
),
  SizedBox(height: 5),
Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text("Call Us",
textAlign: TextAlign.center,
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.bold),
),
),  
Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text(" Need to hear a voice? Call us at +254-780905425. We’re here Monday through Friday, 9 am to 5 pm.",
textAlign: TextAlign.center,
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w500),
),
),  

   SizedBox(height: 10),
Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text("Your journey with SYNERGY is just a message away — let’s create the future together!",
textAlign: TextAlign.center,
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.bold),
),
),                   
          

]
        ),
        
          
        
          ),
        
    );
  }
}