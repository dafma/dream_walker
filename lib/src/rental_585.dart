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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search)
                )
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
          Expanded(
            flex: 15,
            child: Placeholder(),
          ),                    
        ]
      ),
    );
  }
}