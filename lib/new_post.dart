import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Post",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60.0, right: 8.0, top: 10.0),
            child: Text(
              "New Post",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Container(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 10.0),
            child: Wrap(
              children: [
                Container(
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
                      //do something
                    },
                    label: Text(
                      'Story',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    icon: Icon(
                      Icons.amp_stories,
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                ),
                Container(
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
                      //do something
                    },
                    label: Text(
                      'URL',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    icon: Icon(
                      Icons.web,
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                  height: 60.0,
                ),
                  Container(
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

                    },
                    label: Text(
                      'youtube',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    icon: Icon(
                      FontAwesomeIcons.youtube,
                    ),
                  ),
                ),
                Container(
                  width: 10.0,
                ),
                Container(
                  width: 125.0,
                  height: 50.0,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      //background color of button
                      side: BorderSide(width: 1.5, color: Colors.blue),
                      //border width and color
                      shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      //do something
                    },
                    label: Text(
                      'Image',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    icon: Icon(
                      Icons.image,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
