import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reedemcoin/screens/myrewards.dart';

class CustomCard extends StatefulWidget {
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage('assets/images/BRUH.png'),
            width: double.infinity,
            height: 79,
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: SvgPicture.asset(
                      'assets/images/medal (1).svg',
                      height: 40,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Your PlayCoins',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Airbnb Cereal Bold',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        '240',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Airbnb Cereal Bold',
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyReward()));
                    },
                    child: Text(
                      'Explore More',
                      style: TextStyle(
                          fontFamily: 'Airbnb Cereal App',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF463F3A)),
                    ),
                    style: TextButton.styleFrom(
                      //backgroundColor: Color(0xFF1B3659),
                      primary: Color(0xFF463F3A),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Color(0xFF1B3659))),
                      minimumSize: Size(88, 30),
                      //minimumSize: Size(double.infinity, 45)),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
