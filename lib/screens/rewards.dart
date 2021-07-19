import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reedemcoin/widgets/Rewards/CustomList.dart';

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              actions: [
                IconButton(
                    icon: Icon(Icons.info_outline),
                    color: Colors.black,
                    onPressed: () {})
              ],
            ),
            body: SingleChildScrollView(
              child: Container(
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
                          color: const Color.fromRGBO(17, 69, 126, 0.9),
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
                    CustomList(),
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
                            width: MediaQuery.of(context).size.width * 0.78,
                            child: Text(
                              'To know more about PlayCoins from a specific event, check the "Rewards" tab under each venue or event with the PlayCoins logo.',
                              style: TextStyle(
                                fontFamily: 'Airbnb Cereal book',
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          SizedBox(
                            width: 15,
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
              ),
            )));
  }
}
