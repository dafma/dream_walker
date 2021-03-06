import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class TravelApp extends StatelessWidget {
  const TravelApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelHomeApp(),
    );
  }
}


class TravelHomeApp extends StatefulWidget {

  @override
  _TravelHomePageState createState() => _TravelHomePageState();
}



class _TravelHomePageState extends State<TravelHomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            top: 24,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/03/26/09/41/mountain-690104_960_720.jpg",
                        
                        ),
                      fit: BoxFit.fitHeight)),
            ),
          ),
          Positioned(
            top: 64,
            left: 24,
            right: 24,
            height: 54,

            child: Container(

              width: double.infinity,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 0.2, ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Azores, Portugal", style: TextStyle(
                          color: Colors.grey
                      ),),
                      Icon(Icons.search, color: Colors.white,)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Container(
              height: 210,
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16),
                      width: MediaQuery.of(context).size.width - 64,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24)),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              height: 64,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16), topRight: Radius.circular(24))),
                              child: Center(
                                  child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            left: 16,
                            bottom: 16,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Newzealand", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),),
                                Row(
                                  children: [Icon(Icons.map,
                                  size: 18,
                                  color: Colors.grey,), Text("20 Destinations",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),)],
                                ),
                                Spacer(),
                                Container(
                                  height: 72,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue[100], borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue[100], borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue[100], borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue[100], borderRadius: BorderRadius.circular(8)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    );
                  }),
            ),
          ),

          Center(
            child: Text.rich(TextSpan(children: [
              TextSpan(text: "TRIP  ", style: GoogleFonts.prompt(fontSize: 52, color: Colors.white)),
              TextSpan(text: "LO", style: GoogleFonts.prompt(fontSize: 52, color: Colors.white)),
              TextSpan(text: "V", style: GoogleFonts.prompt(fontSize: 52, color: Colors.lightBlueAccent)),
              TextSpan(text: "ER", style: GoogleFonts.prompt(fontSize: 52, color: Colors.white))
            ])),
          )
        ],
      ),
    );
  }
}