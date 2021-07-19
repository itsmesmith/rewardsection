import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  IconButton(icon: Icon(Icons.info_outline), onPressed: () {})
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'PlayCoins & Rewards',
                        style: TextStyle(
                            fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        //color: Colors.green,
                        height: 79,
                        width: double.infinity,
                        color: const Color.fromRGBO(17, 69, 126, 1),
                        colorBlendMode: BlendMode.modulate,
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/images/BRUH.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(14, 14, 14, 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your PlayCoins',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Airbnb Cereal App',
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '240',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Airbnb Cereal App',
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                          CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                            backgroundColor: Colors.grey,
                            value: 0.34,
                            strokeWidth: 5,
                          ),
                        ],
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Text(
                        'You will receive PlayCoins as rewards for:',
                        style: TextStyle(
                            fontFamily: 'Airbnb Cereal book', fontSize: 12),
                      ),
                    ],
                  ),
                  _buildlisttile(
                      'assets/images/calendar.svg',
                      'Venue Bookings',
                      'For every booking made, an approx. 10% of your match value with be rewarded back to you as PlayCoins.',
                      Colors.green),
                  _buildlisttile(
                      'assets/images/pin.svg',
                      'Hosting Matches',
                      "For every match hosted, you'll receive a small PlayCoin deposit based on the number of players that join your match.",
                      Colors.green),
                  _buildlisttile(
                      'assets/images/referral.svg',
                      'Referrals',
                      "For every referral, you'll receive 50 PlayCoins when your friends sign up and a further 100 PlayCoins after your friends complete their first booking.",
                      Colors.green),
                  _buildlisttile(
                      'assets/images/mobile-payment.svg',
                      'Digital Payments',
                      'For every payment worth 500 and above made digitally, you will receive 5% of the transaction value as PlayCoins.',
                      Colors.black),
                  _buildlisttile(
                      'assets/images/games.svg',
                      'Online Events',
                      "For every online event that you participate in, you'll receive 5% of the payment amount as PlayCoins.",
                      Color(0xFF11457E)),
                  _buildlisttile(
                      'assets/images/star.svg',
                      'Rating Venue or Players',
                      "For every time you rate a venue or a player, you'll receive 10 PlayCoins.",
                      Colors.yellow),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 82,
                    color: Color(0xFFF8C701).withOpacity(0.2),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            'To know more about PlayCoins from a specific event, check the "Rewards" tab under each venue or event with the PlayCoins logo.',
                            style: TextStyle(
                                fontFamily: 'Airbnb Cereal book', fontSize: 14),
                          ),
                        ),
                        Container(
                          child: SvgPicture.asset(
                            'assets/images/medal (1).svg',
                            height: 25,
                            width: 25,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    )));
  }

  _buildlisttile(
      String picture, String heading, String subheading, Color colour) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: SvgPicture.asset(
            picture,
            color: colour,
            height: 30,
            width: 30,
          ),
          title: Text(
            heading,
            style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 12),
          ),
          subtitle: Text(subheading,
              style: TextStyle(fontFamily: 'Airbnb Cereal Book', fontSize: 12)),
        ),
      ],
    );
  }
}
