import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomList extends StatefulWidget {
  @override
  _CustomListState createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
      ],
    );
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
