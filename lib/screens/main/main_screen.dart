import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/header.dart';
import 'package:admin/screens/dashboard/components/web_view.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final setHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            children: [
              Container(child: Header()),
              // Container(
              //   height: 60,

              //   // padding,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment
              //         .center, //Center Row contents horizontally,
              //     crossAxisAlignment: CrossAxisAlignment
              //         .center, //Center Row contents vertically,
              //     children: [
              //       Text(
              //         "An Intelligence Analytics Platform",
              //         style: TextStyle(color: Colors.lightBlue, fontSize: 24),
              //       )
              //     ],
              //   ),
              // ),
              // //
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Container(
              //     // margin: EdgeInsets.only(top: 70),
              //     // color: Colors.black,
              //     // color: Color(0xff2a384b),
              //     // decoration: BoxDecoration(color: Color(0xff1c293b)),
              //     // width: 200,
              //     height: setHeight - 70,
              //     child: Expanded(
              //         child: Row(
              //       children: [SideMenu(), WebViewClass()],
              //     )),
              //   ),
              // ),

              // DashboardScreen(),
              Iframe()
              // Container(height: 500, width: 600, child: WebViewClass())
            ],
          ),
        ),
      ),
    );
  }
}
