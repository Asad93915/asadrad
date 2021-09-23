import 'package:flutter/material.dart';
import 'package:signin/seed_screens/paypall_card.dart';

class Testing extends StatefulWidget {
  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Asad')),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.blue,
              ),

              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Paypal(),));
              },
            ),
          ],
        ),
      ),
    );
  }
}
