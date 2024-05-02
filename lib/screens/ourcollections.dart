import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/product.dart';
import 'globals.dart' as globals;

class OurCollections extends StatefulWidget {
  const OurCollections({super.key});

  @override
  State<OurCollections> createState() => _OurCollectionsState();
}

class _OurCollectionsState extends State<OurCollections> {

  nextPage(String title, String image, String description,String businessname,String price) {
    // navigate to next page
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ProductListScreen(
              description: description, imageUrl: image, title: title, businessname: businessname, price: price, productName: '' ,)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:  Color.fromARGB(255, 207, 196, 177),
appBar: AppBar(
  backgroundColor: Colors.transparent,
  title: Text('Our Collection',
  style: GoogleFonts.italiana(
    color:Colors.black,
    fontWeight:FontWeight.bold,
    fontSize:(24),
  ),),
),
 body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 35, left: 16, right: 16, bottom: 16),
                    
                    ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: globals.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Flexible(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, top: 16, bottom: 16),
                            child: Text(
                              globals.items[index]['title'],
                              textAlign: TextAlign.start,
                             style: GoogleFonts.italiana(
              color: Colors.black, fontSize: (16), fontWeight: FontWeight.w600),
                            ),
                          ),
                          Stack(children: [
                            Image.network(globals.items[index]['image'],
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.cover),

 Positioned(
          bottom: 5,
          right: 10,
          child:  Column(
                            
 
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const ProductListScreen(title: '', description: '', imageUrl: '', businessname: '', price: '', productName: '',),
                          ),
                        );
                        nextPage(
                                      globals.items[index]['title'],
                                      globals.items[index]['image'],
                                      globals.items[index]['description'],
                                       globals.items[index]['business name'],
                                        globals.items[index]['price']
                                      
                                      );
                      },
                      child: Text(
                        'view',
                        style: GoogleFonts.italiana(
                          color: Color.fromARGB(255, 207, 196, 177),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.black,
                    ),
                  ],
                ),
 ),
                          ])
                        ],
                      ),
                    );
                  },
                )
              ],
            ))

    );
  }
}