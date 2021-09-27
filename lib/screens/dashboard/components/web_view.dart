import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class Iframe extends StatelessWidget {
  Iframe() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframe', (int viewId) {
      var iframe = html.IFrameElement();
      iframe.src =
          'https://app.powerbi.com/view?r=eyJrIjoiMjJiNzgyNzItZGJmNy00MGI3LTk1NmQtZTUzZTExMTExZThmIiwidCI6Ijk2MTY0MGRkLTQ0MzEtNDUxZC1hMGIyLTA1NzY2MGRiNGJhYiIsImMiOjEwfQ%3D%3D';
      // 'https://app.powerbi.com/view?r=eyJrIjoiNWNkMjRiMjctMzg1NC00M2QyLThhOTEtYWVjNWU4NWFiZGRjIiwidCI6Ijk2MTY0MGRkLTQ0MzEtNDUxZC1hMGIyLTA1NzY2MGRiNGJhYiIsImMiOjEwfQ%3D%3D';
      return iframe;
    });
  }
  @override
  Widget build(BuildContext context) {
    final setHeight = MediaQuery.of(context).size.height;
    final setWidth = MediaQuery.of(context).size.width;
    return Container(
        width: setWidth - 400,
        height: setHeight - 70,
        child: HtmlElementView(viewType: 'iframe'));
  }
}
