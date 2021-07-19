import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reedemcoin/screens/rewards.dart';

class MyReward extends StatefulWidget {
  @override
  _MyRewardState createState() => _MyRewardState();
}

class _MyRewardState extends State<MyReward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image(
                      image: AssetImage('assets/images/predator.jpg'),
                      //color: const Color.fromRGBO(128, 128, 128, 0.9),
                      //colorBlendMode: BlendMode.modulate,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              })),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Text(
                            'MONTHLY REWARD',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontFamily: 'Airbnb Cereal App',
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Adidas Predator 20.3',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          height: 60,
                          //width: double.infinity,
                          image: AssetImage('assets/images/labels.jpg'),
                          //color: const Color.fromRGBO(128, 128, 128, 0.9),
                          //colorBlendMode: BlendMode.modulate,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Powered by: ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Airbnb Cereal book',
                            ),
                          ),
                          Text(
                            'LABELS NEPAL',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'Airbnb Cereal Medium',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Playcoins & Requirements',
                            style: TextStyle(
                                fontFamily: 'Airbnb Cereal Medium',
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Get a chance to win the Adidas Predator 20.3 for 12,500 PlayCoins. More description.',
                        style: TextStyle(
                          fontFamily: 'Airbnb Cereal book',
                          fontSize: 12,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/images/medal (1).svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 116,
                            child: Text(
                              'Required PlayCoins:',
                              style: TextStyle(
                                fontFamily: 'Airbnb Cereal book',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '12500',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal App',
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/images/calendar.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 116,
                            child: Text(
                              'Valid Date:',
                              style: TextStyle(
                                fontFamily: 'Airbnb Cereal book',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '1 Jun, 2020 to 31 Dec, 2020',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal App',
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            'assets/images/user.svg',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 116,
                            child: Text(
                              'Your Status:',
                              style: TextStyle(
                                fontFamily: 'Airbnb Cereal book',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '34%',
                            style: TextStyle(
                              fontFamily: 'Airbnb Cereal App',
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 27,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          minHeight: 10,
                          value: 0.34,
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation(Color(0xFF11457E)),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'About the Reward',
                        style: TextStyle(
                            fontFamily: 'Airbnb Cereal Medium',
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The Predator Freak is worn by the likes of Paul Pogba and David Alaba. The spiky rubber elements are designed to give you an unfair advantage on the ball with solid grip and benefits to ball control. The Freak released in 2021, replace the 2020 Predator Mutator Edition.',
                        style: TextStyle(
                            fontFamily: 'Airbnb Cereal book', fontSize: 12),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Rewards()));
                        },
                        child: Text(
                          'Reedem Now',
                          style: TextStyle(
                            fontFamily: 'Airbnb Cereal Medium',
                          ),
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFEBEBEB),
                            primary: Color((0xFF463F3A)),
                            minimumSize: Size(double.infinity, 45)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
