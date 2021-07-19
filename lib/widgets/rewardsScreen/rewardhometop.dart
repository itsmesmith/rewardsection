import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RewardHomeTop extends StatefulWidget {
  @override
  _RewardHomeTopState createState() => _RewardHomeTopState();
}

class _RewardHomeTopState extends State<RewardHomeTop> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image(
        image: AssetImage('assets/images/a9d4279859d07165db7dd2ce04f7665d.jpg'),
        color: const Color.fromRGBO(128, 128, 128, 0.9),
        colorBlendMode: BlendMode.modulate,
        height: 400,
        width: double.infinity,
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
                  Spacer(),
                  SvgPicture.asset(
                    'assets/images/medal (1).svg',
                    height: 26,
                    width: 26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'PlayCoins',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Airbnb Cereal App',
                          fontSize: 16),
                    ),
                  ),
                  Spacer(),
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
    ]);
  }
}
