import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/product.dart';
import 'package:synergy/screens/womencategory.dart';

class BusinessProfile extends StatefulWidget {
  const BusinessProfile({super.key,
      required this.description,
      required this.imageUrl,
      required this.businessname, required String title,
      });
  
  final String description;
  final String imageUrl;
  final String businessname;
  

  @override
  State<BusinessProfile> createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {
  @override
 Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
          leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Colors.black),
         onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const WomenCategory(),
                    ));
              },
        ),),
      body: SingleChildScrollView(
          child: Column(
        children: [
          // title
          
           SizedBox(height: 50,),
          Center(
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const ProductListScreen(description: '', imageUrl: '', title: '', businessname: '', price: '', productName: '',),
                      ),
                    );
                  },
                  child:  Text(
                    'View Our Collections',
                    style: GoogleFonts.italiana(color: Colors.black,
                    fontSize:16,
                    fontWeight: FontWeight.bold,
                  
                  ),
                ),
                backgroundColor:Color.fromARGB(255, 207, 196,177),
              ),
              ),
        ],
      )),
    );
  }
}

