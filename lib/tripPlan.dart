import 'package:flutter/material.dart';
import 'package:design_app/customWidget.dart';

class TripPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                  Icons.watch_later,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text("6 Days left to finalize the plan ",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
          CustomWidget(timeDate:'3:00pm, Mar 21 2019', plan:'Will meet at the Hotel'),
          CustomWidget(timeDate:'8:00pm, Mar 21 2019 ', plan:'Exploring Indonesian foods'),
          CustomWidget(timeDate:'6:00am, Mar 22 2019 ', plan:'Enjoying the Sunrise'),

          ButtonTheme(
            height: 60,
            minWidth: 300,
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.lightGreen,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0)),
              child: Text(
                '+ Add Another Plan',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              onPressed: (){

              },
            ),
          ),
        ],
      ),
    );
  }
}




