
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/homepage.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor:Color.fromARGB(255,207, 196, 177),
      appBar: AppBar(
        title:Text('PAYMENTS',
         style: GoogleFonts.irishGrover(
              color: Colors.black, fontSize: (40), fontWeight: FontWeight.bold),
          ),
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
      body: Container(
      // Set background color to black
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 10),
                Image.asset('assets/icons/money.png', height: 170,),
                
            
            SizedBox(height: 16),
            _buildPaymentOption(
              icon: Icons.credit_card,
              title: 'Credit Card',
              subtitle: 'Pay securely with your credit card.',
            ),
           
            _buildPaymentOption(
              icon: Icons.phone_android,
              title: 'M-Pesa',
              subtitle: 'Make payments using M-Pesa.',
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentOption(
      {required IconData icon,
      required String title,
      required String subtitle}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black, // Change container background color
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            size: 32,
            color:Color.fromARGB(255, 207, 196, 177), // Change icon color to yellow
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: GoogleFonts.italiana(
              color: Color.fromARGB(255, 207, 196, 177), fontSize: (16), fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
               style: GoogleFonts.italiana(
              color: Color.fromARGB(255, 207, 196, 177), fontSize: (16), fontWeight: FontWeight.w700,// Change subtitle color
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

