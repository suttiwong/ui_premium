import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 50.0), //ระยะห่างจากรูป
                            child: Text(
                              'Premium',
                              style: GoogleFonts.sriracha(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          //SizedBox(width: 8.0),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 45.0,
                    height: 45.0,
                    /*child: Icon(
                      Icons.close,
                    ),*/
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text(
                        'The Secrets to be fluent in English',
                        style: GoogleFonts.sriracha(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildCategoryButton(
                            'Full Access to Pattern Lessons',
                            'images/icon1.png',
                          ),
                        ),
                        SizedBox(width: 16.0, height: 10.0,),
                        Expanded(
                          child: _buildCategoryButton(
                            'Unlock All Limitations',
                            'images/icon2.png',

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: _buildCategoryButton(
                            'All Topics Available',
                            'images/icon3.png',

                          ),
                        ),
                        SizedBox(width: 16.0, height: 10.0,),
                        Expanded(
                          child: _buildCategoryButton(
                            'Personlized Coaching',
                            'images/icon4.png',

                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                      child: Text('@2021 Special Early Birds Offer',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20.0,
                          decoration : TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('IDR50.000/month',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: (){
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('Start 3 Days Free Trial',
                            style: GoogleFonts.sriracha(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                           ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('View all Plan',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          decoration : TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildCategoryButton(String text, String image) {
    return Container(

      decoration: BoxDecoration(
        color : Colors.white,
        border: Border.all(width: 8, color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
        margin: const EdgeInsets.all(5),
        child: Column(
          children: [
            SizedBox(width: 20,),
            Image.asset(image,
              height: 100,
            ),
            Text(text,
              style: GoogleFonts.sriracha(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
          ],
        ),
    );
  }
}
