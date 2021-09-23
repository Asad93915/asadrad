import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('I am SnackBar'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}
