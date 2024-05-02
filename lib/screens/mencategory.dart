import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:synergy/screens/businessprofile.dart';
import 'package:synergy/screens/homepage.dart';
import 'globals.dart' as globals;

class MenCategory extends StatefulWidget {
  const MenCategory({super.key});

  @override
  State<MenCategory> createState() => _MenCategoryState();
}

class _MenCategoryState extends State<MenCategory> {
  nextPage(String title, String image, String description,String businessname,String price) {
    // navigate to next page
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => BusinessProfile(
              description: description,
               imageUrl: image, 
               title: title,
                businessname: businessname, 
                )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Color.fromARGB(255,207, 196, 177),
        appBar: AppBar(
          
          title: Text(
          'Men',
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
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text('Men Clothing Brands'),
                
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
                            builder: (BuildContext context) => const BusinessProfile(title: '', description: '', imageUrl: '', businessname: ''),
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