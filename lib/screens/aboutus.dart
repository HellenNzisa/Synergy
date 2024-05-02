import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/homepage.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255,207, 196, 177),
      appBar: AppBar(
        title: Text(
          'ABOUT US',
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
         child: Text("Synergy: a word that encapsulates the beautiful harmony of different elements coming together to create something greater than the sum of its parts. At Synergy, we believe in the power of unity, collaboration, and authenticity. It's not just a word to us; it's a guiding principle, a beacon of inspiration that fuels our mission.In the heart of Kenya, amidst the vibrant tapestry of cultures and traditions, Synergy was born. Conceived by the visionary mind of a student at Strathmore University, Synergy embodies the spirit of innovation and empowerment.",
            style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w500),
        ),
                ),
          
SizedBox(height: 10),
Container(
                padding: const EdgeInsets.all(16),
child: Text("Our journey began with a simple yet profound idea: to celebrate and promote authentic African fashion, not just within Kenya or Africa, but to the far reaches of the world. We recognized the incredible talent, creativity, and craftsmanship present in every stitch, every pattern, and every design crafted by local artisans.Through Synergy, we aim to bridge the gap between cultures, continents, and communities, transforming the world into a global village where borders blur and diversity thrives. Our platform serves as a vibrant marketplace, connecting discerning fashion enthusiasts with the rich tapestry of African heritage and style.",
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w500),
),
),

SizedBox(height: 10),
Container(
                padding: const EdgeInsets.all(16),
child: Text("But Synergy is more than just an app; it's a catalyst for change. By championing small business owners and independent designers, we're not just promoting economic growth; we're nurturing dreams, empowering individuals, and fostering sustainable development within the fashion industry.Every purchase made through Synergy is a testament to the enduring legacy of African craftsmanship, a celebration of culture, and a step towards a more inclusive and interconnected world. Join us on this extraordinary journey, where passion meets purpose, and together, let's redefine the future of fashion.",
style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w500),
),
),   
SizedBox(height: 10),
Container(
                padding: const EdgeInsets.only(top:10,left:15,right:15,bottom:10),
child: Text("Yours Truly,THE CREATOR",
textAlign: TextAlign.left,
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