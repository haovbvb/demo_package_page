import 'package:flutter/material.dart';

class FlutterPage extends StatelessWidget {

  final title = "Flutter page";
  final listData = ["这是 Flutter page", "这是 Flutter page", "这是 Flutter page"];

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
            onTap: () => _push(index),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemCount: listData.length,

      ),
    );
  }

  void _push(int index) {

    switch (index){
      case 0:
        break;
      case 1:

        break;

    }

  }
}