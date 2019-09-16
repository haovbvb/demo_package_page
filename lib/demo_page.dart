import 'package:flutter/material.dart';
import 'package:flutter_xebaseui/flutter_xebaseui.dart';


class DemoPage extends StatelessWidget {

  final title = "demo page";
  final listData = ["Toast 弹窗", "加载动画", "下拉刷新"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(title: Text(listData[index]));
          },
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: listData.length,
      ),
    );
  }

  void _test() {
    XMToast.showToast("tttttt");
  }
}