import 'package:flutter/material.dart';

import 'package:plants_app/plantslist.dart';

class PlantDetail extends StatelessWidget {
  final plant;

  PlantDetail({this.plant});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.0, left: MediaQuery.of(context).size.width - 60.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.green,
                  mini: true,
                  elevation: 0.0,
                  child: Icon(Icons.shopping_cart,
                      color: Colors.white, size: 15.0),
                ),
              ),
              Positioned(
                top: 10.0,
                left: MediaQuery.of(context).size.width - 30.0,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white),
                  child: Center(
                      // child: Text(
                      //   '1',
                      //   style: TextStyle(color: Color(0xFF399D63),
                      //   fontFamily: 'Montserrat'
                      //   ),
                      // ),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'INDOOR',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                    Text(
                      'Ficus',
                      style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'FROM',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightGreen),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      'SIZES',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.lightGreen),
                    ),
                    Text(
                      'Small',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(height: 50.0),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.black),
                      child: Center(
                        child:
                            Icon(Icons.add_shopping_cart, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height / 2) - 185.0,
                left: (MediaQuery.of(context).size.width / 2) - 80.0,
                child: Image(
                  image: AssetImage('assets/whiteplant.png'),
                  fit: BoxFit.cover,
                  height: 250.0,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 360.0,
                      left: 20.0,
                      right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'All to know',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Plant height: 35-45cm',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Text(
                        'Nursery pot widt 12cm',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
