import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reedemcoin/screens/myrewards.dart';

class RewardScreen extends StatefulWidget {
  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(children: [
                  Image(
                    image: AssetImage(
                        'assets/images/a9d4279859d07165db7dd2ce04f7665d.jpg'),
                    color: const Color.fromRGBO(128, 128, 128, 0.9),
                    colorBlendMode: BlendMode.modulate,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    //margin: EdgeInsets.only(bottom: 90),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(20)),
                                child: IconButton(
                                    icon: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                    onPressed: null)),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black.withOpacity(0.7),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "More info",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  IconButton(
                                      icon: Icon(
                                        Icons.info_outline,
                                        color: Colors.white,
                                      ),
                                      onPressed: (null)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    //top: 20,
                    left: 10,
                    right: 10,
                    bottom: 10,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/medal (1).svg',
                                height: 26,
                                width: 26,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'PlayCoins',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Airbnb Cereal App',
                                    fontSize: 16),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Center(
                            child: Text(
                                'Earn PlayCoins for every match, redeem them for rewards,matches and more.Only at WePlay',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Airbnb Cereal App',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                                // overflow: TextOverflow.ellipsis,
                                // maxLines: 3,
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
                Container(
                  height: 120,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.1,
                          blurRadius: 50,
                          offset: Offset(10, 2),
                        )
                      ]),
                  width: double.infinity,
                  //        height: 200,
                  child: Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image: AssetImage('assets/images/BRUH.png'),
                        width: double.infinity,
                        height: 100,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Your PlayCoins',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Airbnb Cereal App',
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '240',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Airbnb Cereal App',
                                    ),
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              )
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyReward()));
                              },
                              child: Text(
                                'Explore Now',
                                style: TextStyle(
                                  fontFamily: 'Airbnb Cereal App',
                                ),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color(0xFF1B3659)))),
                                foregroundColor: MaterialStateProperty.all(
                                    Color(0xFF1B3659)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10)),
                                textStyle: MaterialStateProperty.all(
                                    TextStyle(fontSize: 15)),
                              ))
                        ],
                      ),
                    )
                  ]),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1)),
                  child: Column(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                        ],
                      ),
                      Stack(children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            child: Image(
                                image:
                                    AssetImage('assets/images/predator.jpg'))),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
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
                                      valueColor:
                                          AlwaysStoppedAnimation(Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ])
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
