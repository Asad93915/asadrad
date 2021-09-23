import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetTask extends StatefulWidget {
  @override
  _BottomSheetTaskState createState() => _BottomSheetTaskState();
}

class _BottomSheetTaskState extends State<BottomSheetTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Builder(
        builder: (context) => Align(
          alignment: Alignment.center,
          child: ElevatedButton(
              child: Text("Press"),
              onPressed: () {
                showBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Card(
                      margin: EdgeInsets.only(
                          left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black),
                      ),
                      color: Colors.amberAccent,
                      elevation: 5.0,
                      shadowColor: Colors.brown,
                      clipBehavior: Clip.antiAlias,
                      child: IndexWidgetArea(),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class IndexWidgetArea extends StatefulWidget {
  @override
  _IndexWidgetAreaState createState() => _IndexWidgetAreaState();
}

class _IndexWidgetAreaState extends State<IndexWidgetArea> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: i,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: 180,
            width: double.infinity,
            child: Wrap(
              children: [
                Center(
                  child: Text(
                    'New Post',
                    style: Theme.of(context).textTheme.bodyText2.apply(
                          fontSizeFactor: 1.5,
                        ),
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                NewPost(
                  icon: Icons.amp_stories,
                  text: 'Story',
                  onTap: () {
                    setState(() {
                      i = 1;
                    });
                  },
                ),
                Container(
                  width: 10.0,
                ),
                NewPost(
                  icon: Icons.web,
                  text: 'URL',
                  onTap: () {
                    setState(() {
                      i = 2;
                    });
                  },
                ),
                Container(
                  height: 10.0,
                ),
                NewPost(
                  icon: FontAwesomeIcons.youtube,
                  text: 'Youtube',
                  onTap: () {
                    setState(() {
                      i = 3;
                    });
                    //i=3;
                  },
                ),
                Container(
                  width: 10.0,
                ),
                NewPost(
                  icon: Icons.image,
                  text: 'Image',
                  onTap: () {
                    setState(() {
                      i = 4;
                    });
                    //i=0;
                  },
                ),
              ],
            ),
          ),
        ),
        // Index = 1
        Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.purple,
          alignment: Alignment.bottomRight,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  i = 0;
                });
              },
              child: Text("Back Press"),
            ),
          ),
        ),
        //index2
        Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.yellow,
          alignment: Alignment.bottomRight,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  i = 0;
                });
              },
              child: Text("Back Press"),
            ),
          ),
        ),
        //index3
        Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.red,
          alignment: Alignment.bottomRight,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  i = 0;
                });
              },
              child: Text("Back Press"),
            ),
          ),
        ),
        Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.teal,
          alignment: Alignment.bottomRight,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  i = 0;
                });
              },
              child: Text("Back Press"),
            ),
          ),
        ),
      ],
    );
  }
}

class NewPost extends StatefulWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  const NewPost({
    Key key,
   this.icon,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.0,
      height: 50.0,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          //background color of button
          side: BorderSide(width: 1, color: Colors.blue),
          //border width and color
          shape: RoundedRectangleBorder(
            //to set border radius to button
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          widget.onTap();
          //do something
        },
        label: Text(
          widget.text,
          style: Theme.of(context).textTheme.bodyText2,
        ),
        icon: Icon(
          widget.icon,
        ),
      ),
    );
  }
}
