import 'package:flutter/material.dart';
import 'package:design_app/tripPlan.dart';
import 'package:design_app/customText.dart';

void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 100.0,// for android device
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child:  Column(
            children: <Widget>[
              CustomText(text:'Plan your trip',size: 30.0,weight: FontWeight.w400,color:Colors.black),
              SizedBox(
                height: 5.0,
              ),

              CustomText(text:'Your partners are ready.Plan',size: 18.0,weight: FontWeight.w300,color:Colors.grey),
              CustomText(text:'your trip with your partners.',size: 18.0,weight: FontWeight.w300,color:Colors.grey),

              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_ios),
          );
        },),
        title: Text(
          'Step 2 0f 3',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(maxHeight: 150.0),
              child: Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(text: "PARTNERS"),
                    Tab(text: "TRIP PLAN"),
                    Tab(text: "START TRIP"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  TripPlan(),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


