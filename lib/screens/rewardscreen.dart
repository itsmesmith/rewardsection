import 'package:flutter/material.dart';
import 'package:reedemcoin/widgets/rewardsScreen/Card.dart';
import 'package:reedemcoin/widgets/rewardsScreen/myearnings.dart';
import 'package:reedemcoin/widgets/rewardsScreen/rewardhometop.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [RewardHomeTop(), CustomCard(), MyEarnings()],
            ),
          ),
        ),
      ),
    );
  }
}
