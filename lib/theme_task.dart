import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThemeTask extends StatefulWidget {
  @override
  _ThemeTaskState createState() => _ThemeTaskState();
}

class _ThemeTaskState extends State<ThemeTask> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(width: 1, color: Colors.blueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                    )),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => SelectionDialog(
                      title: "Choose theme",
                      // val = 0;
                      onSelected: (val) {
                        print('its index of radio-----$val');
                      },
                    ),
                  );
                },
                icon: Icon(
                  FontAwesomeIcons.themeco,
                  color: Colors.black,
                ),
                label: Row(
                  children: [
                    Text(
                      " Theme",
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    // Icon(Icons.)
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class SelectionDialog extends StatefulWidget {
  // final List<String> data;

  // final void Function(int) onSelected;
  final Function onSelected;
  final String title;

  final int index;

  SelectionDialog({
    // this.data,
    this.index,
    this.onSelected,
    this.title,
  });

  @override
  _SelectionDialogState createState() => _SelectionDialogState();
}

class _SelectionDialogState extends State<SelectionDialog> {
  // String colorGroupValue;
  int groupValue;

  List<String> testList = [
    'System Default',
    'Light',
    'Dark',
  ];

  // int value = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      child: new AlertDialog(
        title: Text(widget.title),
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < testList.length; i++)
                InkWell(
                  onTap: () {
                    widget.onSelected(i);
                    setState(() {});
                  },
                  child: Row(
                    children: [
                      Radio(
                        // value: testList[i].toString(),
                        value: i,
                        groupValue: groupValue,
                        onChanged: (val) {
                          print('its index of onChanged-----$i');
                          groupValue = val;
                          print('its val : $val');
                          setState(() {});
                          widget.onSelected(val);
                        },
                      ),

                      // Text(testList[i].toString()),
                      Text(testList[i]),
                    ],
                  ),
                ),

              // Row(
              //   children: [
              //     Radio(
              //       value: 'light',
              //       groupValue: colorGroupValue,
              //       onChanged: (val) {
              //         colorGroupValue = val;
              //
              //         setState(() {});
              //       },
              //     ),
              //     Text('Light'),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Radio(
              //       value: 'dark',
              //       groupValue: colorGroupValue,
              //       onChanged: (val) {
              //         colorGroupValue = val;
              //         setState(() {});
              //       },
              //     ),
              //     Text('Dark'),
              //   ],
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // setState(() {
                        //   //
                        //   //do something
                        // });
                      },
                      child: Text(
                        "Cancel",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .apply(color: Colors.teal),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Ok",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .apply(color: Colors.teal),
                      )),
                ],
              )

              ///Radio button end
            ],
          ),
        ],
      ),
    );
  }
}