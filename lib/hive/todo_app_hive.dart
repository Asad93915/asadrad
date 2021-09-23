// hive: ^2.0.4
// path_provider: ^2.0.2
// hive_flutter: ^1.1.0

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class TodoAppHive extends StatefulWidget {
  @override
  _TodoAppHiveState createState() => _TodoAppHiveState();
}

class _TodoAppHiveState extends State<TodoAppHive> {
  final titlecontroller = TextEditingController();
  final detailscontroller = TextEditingController();
  final String title = "Hive Database";
  Box<String> todoBox;

  @override
  void initState() {
    todoBox = Hive.box<String>('friends');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Hive Database",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Show"),
      //     onPressed: (){
      //      // 1) //as we show in below that tite is a key and details is value so
      //       //i am giving the title to field sag and get value sas that written in below
      //
      //       // print(todoBox.get('asad'));
      //
      //
      //     },
      //   ),
      //
      // ),

      // 2)we use a valuelistenableBuilder to store the box on the list
      body: ValueListenableBuilder(
        valueListenable: todoBox.listenable(),
        builder: (context, Box<String> todos, _) {
          return ListView.builder(
            itemCount: todos.keys.toList().length,
            itemBuilder: (context, index) {
              final title = todos.keys.toList()[index];
              final details = todos.get(title);
              return Column(
                children: [
                  ListTile(
                    title: Text(title),
                    subtitle: Text(details),
                  ),
                  ListTile(
                      subtitle: Row(
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            // await todoBox.clear();
                            await todoBox.deleteAt(index);
                          },
                          child: Text("DELETE",style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),))
                    ],
                  )),
                ],
              );
            },
          );
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return buildShowDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                30.0,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(
                15.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: titlecontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      // hintText: "Title",
                      labelText: "Title",
                      prefixIcon: Icon(
                        Icons.title,
                        color: Colors.black,
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: detailscontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      // hintText: "Details",
                      labelText: 'Details',
                      labelStyle: TextStyle(color: Colors.black),
                      //   // helperText: 'Keep it short, this is just a demo.',
                      prefixIcon: Icon(
                        Icons.details,
                        color: Colors.green,
                      ),
                      //   // prefixText: ' ',
                      //   // suffixText: 'USD',
                      //   suffixStyle: const TextStyle(color: Colors.black)),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          onPressed: () {},
                          child: Text("Cancel")),
                      ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(shape: StadiumBorder()),
                          onPressed: () {
                            final String title = titlecontroller.text;
                            final String details = detailscontroller.text;
                            // todoBox.put(key, value)
                            todoBox.put(title, details);
                            Navigator.pop(context);
                          },
                          child: Text("Add")),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                        onPressed: () async {
                          // todoBox.deleteFromDisk();

                          await todoBox.clear();
                          // todoBox.deleteAt(index);
                          // todoBox.deleteAll(title);
                          // todoBox.delete(title);
                          // todoBox.delete(titlecontroller);
                          // todoBox.deleteAll(title,details);
                          Navigator.pop(context);
                        },
                        child: Text('Delete'),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
