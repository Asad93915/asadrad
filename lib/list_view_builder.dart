

import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("ListView Builder") ,
      ),
      body: ListView.builder(
        itemCount: 14,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Icon(Icons.today),
            title: Text('DAY $index'),
          );
        }

    ),
    );
  }
}
