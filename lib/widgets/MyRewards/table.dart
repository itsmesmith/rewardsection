import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TableList extends StatefulWidget {
  @override
  _TableListState createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}
