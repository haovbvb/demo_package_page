import 'package:flutter/material.dart';
import 'package:flutter_xebaseui/flutter_xebaseui.dart';
import 'package:flutter_boost/flutter_boost.dart';

class DemoPage extends StatelessWidget {

  final title = "demo page";
  final listData = ["Toast 弹窗", "Flutter 跳转原生功能包", "Flutter 跳转 Flutter Package"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listData[index]),
              onTap: () => _push(index, context),
            );
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: listData.length,

      ),
    );
  }

  void _push(int index, BuildContext context) {

    switch (index){
      case 0:
        XMToast.showToast("$index");
        break;
      case 1:
        _pushVC();
        break;
      case 2:
        _pushFlutterPage(context);
        break;

    }

  }

  void _pushVC() {
    FlutterBoost.singleton.open("iOSAndAndiordPage", urlParams: {"type": "iOS"});
  }

  void _pushFlutterPage(BuildContext context) {
    FlutterBoost.singleton.open("flutterPage", urlParams: {"type": "flutterPage"});
  }
}