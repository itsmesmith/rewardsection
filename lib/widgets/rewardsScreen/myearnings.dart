import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyEarnings extends StatefulWidget {

  @override
  _MyEarningsState createState() => _MyEarningsState();
}

class _MyEarningsState extends State<MyEarnings> {
  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]
                      //border: Border.all(width: 1)
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'MONTHLY REWARD',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontFamily: 'Airbnb Cereal App',
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Powered by  ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 8,
                                    fontFamily: 'Airbnb Cereal App',
                                  ),
                                ),
                                Text(
                                  'LABELS NEPAL',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 8,
                                    fontFamily: 'Airbnb Cereal App',
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
                        child: Text(
                          'Adidas Predator 20.3',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Image(image: AssetImage('assets/images/predator.jpg')),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.9),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/profit.svg',
                                  color: Colors.white,
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '2400/12500',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                minHeight: 10,
                                value: 0.3,
                                backgroundColor: Colors.white,
                                valueColor: AlwaysStoppedAnimation(Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
  }
}