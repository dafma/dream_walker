import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rental_585 extends StatelessWidget {
  const Rental_585({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) => RentalApp(), 
      },
    );
  }
}

class RentalApp extends StatefulWidget {
  RentalApp({Key key}) : super(key: key);

  @override
  _RentalAppState createState() => _RentalAppState();
}

class _RentalAppState extends State<RentalApp> {
  int pageIndex = 0;
  Color _appColor = Color(0xff527365);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body:  SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  suffixIcon: Icon(CupertinoIcons.search),
                  border: InputBorder.none,
                )
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top:16, bottom:16),
                child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: pageIndex == 0 ? _appColor : _appColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Center(
                          child: Text("House", 
                            style: TextStyle(color: Colors.white)
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: pageIndex == 1 ? _appColor : _appColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Center(
                          child: Text("Price", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: pageIndex == 2 ? _appColor : _appColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Center(
                          child: Text("Willa", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),   
                  IconButton(
                    icon: Icon(Icons.tune), 
                    onPressed: (){},
                    color: _appColor,
                  )                               
                ]
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        height: MediaQuery.of(context).size.height / 3,
                        //decoration: BoxDecoration( color: Colors.blue,),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              bottom: 0,
                              top: 0,
                              right: 130,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",),
                                      fit: BoxFit.cover   
                                    )
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 5,
                                        bottom: 16,
                                        child: Container(
                                          width: 120,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children:[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children:[
                                                  Text("Primary"),
                                                  Text("Cottage"),
                                                ]
                                              ),
                                              Container(
                                                height:32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: _appColor,
                                                    foregroundColor: Colors.white,
                                                    child: Icon(Icons.location_on, size: 15)
                                                  )
                                                ),
                                              )
                                            ]
                                          )
                                        )
                                      )
                                    ],
                                  )
                                ),

                              )
                            ),
                            Positioned(
                              right: 10,
                              left: 130,
                              bottom: 32,
                              top: 32,
                              child: Card(
                                elevation: 4,
                                child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Row(
                                        children:[
                                          Text("\$1300"),
                                          Text("per month"),
                                        ]
                                      ),
                                      Text("Pretty self-explanatory", style: TextStyle(fontSize: 12)),
                                      Row(
                                        children: [
                                          ...List.generate(5, (index) => Icon(Icons.star, color: Colors.orangeAccent, size: 12,)),
                                          Text("(324)", style: TextStyle(fontSize: 12))
                                        ]
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),

                              )
                            ),
                          ]
                        ), 
                      ),
                      SizedBox(height: 16),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        height: MediaQuery.of(context).size.height / 3,
                        //decoration: BoxDecoration( color: Colors.blue,),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              bottom: 0,
                              top: 0,
                              right: 130,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",),
                                      fit: BoxFit.cover   
                                    )
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 5,
                                        bottom: 16,
                                        child: Container(
                                          width: 120,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children:[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children:[
                                                  Text("Primary"),
                                                  Text("Cottage"),
                                                ]
                                              ),
                                              Container(
                                                height:32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: _appColor,
                                                    foregroundColor: Colors.white,
                                                    child: Icon(Icons.location_on, size: 15)
                                                  )
                                                ),
                                              )
                                            ]
                                          )
                                        )
                                      )
                                    ],
                                  )
                                ),

                              )
                            ),
                            Positioned(
                              right: 10,
                              left: 130,
                              bottom: 32,
                              top: 32,
                              child: Card(
                                elevation: 4,
                                child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Row(
                                        children:[
                                          Text("\$1300"),
                                          Text("per month"),
                                        ]
                                      ),
                                      Text("Pretty self-explanatory", style: TextStyle(fontSize: 12)),
                                      Row(
                                        children: [
                                          ...List.generate(5, (index) => Icon(Icons.star, color: Colors.orangeAccent, size: 12,)),
                                          Text("(324)", style: TextStyle(fontSize: 12))
                                        ]
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),

                              )
                            ),
                          ]
                        ), 
                      ),
                      SizedBox(height: 16),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        height: MediaQuery.of(context).size.height / 3,
                        //decoration: BoxDecoration( color: Colors.blue,),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              bottom: 0,
                              top: 0,
                              right: 130,
                              child: Card(
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage("https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",),
                                      fit: BoxFit.cover   
                                    )
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 5,
                                        bottom: 16,
                                        child: Container(
                                          width: 120,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(0.5),
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children:[
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children:[
                                                  Text("Primary"),
                                                  Text("Cottage"),
                                                ]
                                              ),
                                              Container(
                                                height:32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5)
                                                ),
                                                child: Center(
                                                  child: CircleAvatar(
                                                    radius: 10,
                                                    backgroundColor: _appColor,
                                                    foregroundColor: Colors.white,
                                                    child: Icon(Icons.location_on, size: 15)
                                                  )
                                                ),
                                              )
                                            ]
                                          )
                                        )
                                      )
                                    ],
                                  )
                                ),

                              )
                            ),
                            Positioned(
                              right: 10,
                              left: 130,
                              bottom: 32,
                              top: 32,
                              child: Card(
                                elevation: 4,
                                child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Row(
                                        children:[
                                          Text("\$1300"),
                                          Text("per month"),
                                        ]
                                      ),
                                      Text("Pretty self-explanatory", style: TextStyle(fontSize: 12)),
                                      Row(
                                        children: [
                                          ...List.generate(5, (index) => Icon(Icons.star, color: Colors.orangeAccent, size: 12,)),
                                          Text("(324)", style: TextStyle(fontSize: 12))
                                        ]
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                          Container(
                                            height:32,
                                            width: 32,
                                            decoration: BoxDecoration(
                                              color: _appColor,
                                              borderRadius: BorderRadius.circular(5)
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                  ),
                                ),

                              )
                            ),
                          ]
                        ), 
                      ),
                      SizedBox(height: 16),                                        
                   ]
                  )
                ),
                Positioned(
                  bottom: 24,
                  left: 100,
                  right: 100,
                  child: Center(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: _appColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          Text(
                            "Map View",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add_location),
                            foregroundColor: _appColor,
                          )
                        ]
                      ),
                    ),
                  )
                )
              ],
            ),
          ),                    
        ]
      ),
    ),
    );
  }
}