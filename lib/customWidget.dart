import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {

  CustomWidget({@required this.timeDate,@required this.plan});

  final String timeDate;
  final String plan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 350,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    timeDate,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    plan,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.check_circle,
                color: Colors.lightGreen,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
