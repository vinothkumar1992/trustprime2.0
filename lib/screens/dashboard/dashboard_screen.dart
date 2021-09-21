import 'dart:html';

import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:admin/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var WheellContainer = RotatedBox(
    //   quarterTurns: 1,
    //   child: Container(
    //     // color: Colors.white,
    //     child: ListWheelScrollView(
    //         itemExtent: 100,
    //         diameterRatio: 1,
    //         offAxisFraction: -0.6,
    //         perspective: 0.000000001,
    //         // physics: FixedExtentScrollPhysics(),
    //         onSelectedItemChanged: (index) {
    //           // print("Selected Country ${listCountry[index].name}");
    //         },
    //         // physics: FixedExtentScrollPhysics(),
    //         children: [
    //           Container(
    //               height: 200,
    //               child: Stack(
    //                 children: [
    //                   SmartModules(
    //                       dash_count: "5 Dashboard",
    //                       title: "SMart Environment"),
    //                   SmartModules(
    //                       dash_count: "5 Dashboard",
    //                       title: "SMart Environment"),
    //                   SmartModules(
    //                       dash_count: "5 Dashboard",
    //                       title: "SMart Environment"),
    //                 ],
    //               ))
    //         ]),
    //   ),
    // );

    var WheellContainer = Container(
      child: RotatedBox(
        quarterTurns: 1,
        child: Container(
          width: 160,
          // height: double.infinity,
          // decoration: BoxDecoration(color: Colors.amberAccent),
          // height: 20,
          child: ListWheelScrollView(
            itemExtent: 160,
            diameterRatio: 1.2,
            offAxisFraction: -0.99,
            perspective: 0.00000000001,
            physics: FixedExtentScrollPhysics(),
            children: <Widget>[
              SmartModules(
                title: "SMART ECONOMY",
                dash_count: "5 Dashboards",
              ),
              SmartModules(title: "SMART LIVING", dash_count: "5 Dashboards"),
              SmartModules(
                  title: "SMART GOVERNMENT", dash_count: "10 Dashboards"),
              SmartModules(
                title: "SMART PEOPLE",
                dash_count: "10 Dashboards",
              ),
              SmartModules(
                  title: "SMART ENVIRONMENT", dash_count: "10 Dashboards"),
              SmartModules(title: "SMART ECONOMY", dash_count: "5 Dashboards")
            ],
          ),
        ),
      ),
    );

    return SafeArea(
        child: SingleChildScrollView(
      // padding: const EdgeInsets.all(8.0),
      child: Expanded(
          // height: 600,
          child: IntrinsicHeight(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // SideMenu(),
                    Modules(
                      title: "Todays's Temperature :",
                      image: "assets/images/temperature.png",
                    ),
                    SizedBox(height: 5),
                    Modules(
                      title: "Complaints :",
                      image: "assets/images/complaints.png",
                    ),
                    SizedBox(height: 5),
                    Modules(
                      title: "City Happiness Index",
                      image: "assets/images/city.png",
                    ),
                  ],
                )),
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: WheellContainer),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 310,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/connect.png"),
                              fit: BoxFit.fitWidth),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Modules(
                      title: "City Happiness Index",
                      image: "assets/images/city.png",
                    ),
                    SizedBox(height: 5),
                    Modules(
                      title: "Peak Traffic Time :",
                      image: "assets/images/traffic.png",
                    ),
                    SizedBox(height: 5),
                    Modules(
                      title: "Todays's Temperature :",
                      image: "assets/images/temperature.png",
                    ),
                  ],
                ))
          ],
        ),
      )),
    ));
  }
}

class SmartModules extends StatelessWidget {
  final String title;
  final String dash_count;
  const SmartModules({Key? key, required this.title, required this.dash_count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 98.95,
      child: Container(
        // width: 400,
        margin: EdgeInsets.zero,
        width: 240,
        height: 120,
        // alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Color(0xff123456),
          border: Border.all(color: Colors.lightBlue, width: 2),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlue[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 70,
              height: 1,
              color: Colors.lightBlue,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              this.dash_count,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.yellow[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 11),
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              "assets/images/trust.png",
              height: 60,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => {print("yes")},
              child: Text("LAUNCH MODULE"),
            )
          ],
        ),
      ),
    );
  }
}

class Modules extends StatelessWidget {
  final String image;
  final String title;
  const Modules({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // decoration: BoxDecoration(
      //   border: Border.all(
      //     color: Colors.lightBlue,
      //     width: 2,
      //   ),
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.elliptical(30, 30),
      //     topRight: Radius.circular(20),
      //     bottomLeft: Radius.circular(20),
      //     bottomRight: Radius.circular(20),
      //   ),
      // ),
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 8),
        child: Container(
            child: Column(
          children: [
            // Text(this.title,
            //     style: TextStyle(
            //       fontSize: 12,
            //     ),
            //     textAlign: TextAlign.start),
            Image.asset(
              this.image,
              height: 140,
            )
          ],
        )),
      ),
    );
  }
}

class ModuleContent extends StatelessWidget {
  const ModuleContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        SizedBox(height: defaultPadding),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  MyFiles(),
                  SizedBox(height: defaultPadding),
                  RecentFiles(),
                  if (Responsive.isMobile(context))
                    SizedBox(height: defaultPadding),
                  if (Responsive.isMobile(context)) StarageDetails(),
                ],
              ),
            ),
            if (!Responsive.isMobile(context)) SizedBox(width: defaultPadding),
            // On Mobile means if the screen is less than 850 we dont want to show it
            if (!Responsive.isMobile(context))
              Expanded(
                flex: 2,
                child: StarageDetails(),
              ),
          ],
        )
      ],
    );
  }
}
