import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetScreen extends StatefulWidget {

  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body:
        Builder(
          builder: (context) => Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              child: Text("Press"),
              onPressed: () {
                showBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => Container(
                      margin: EdgeInsets.only(
                          left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 200.0,
                      width: double.infinity,

                      //color: Colors.black,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 20.0),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10.0,
                                right: 8.0,
                              ),
                              child: Text(
                                "New Post",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .apply(fontSizeFactor: 1.5),
                              ),
                            ),
                            Container(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 10.0),
                              child: IndexedStack(
                                index: i,
                                children: [
                                  Wrap(
                                    children: [

                                      NewPost(icon: Icons.amp_stories,
                                      text: 'Story',
                                        onTap: (){
                                          setState(() {

                                            // i=1;
                                          });

                                        },


                                      ),
                              Container(
                                  width: 10.0,
                                ),
                                      NewPost(icon: Icons.web,
                                        text: 'URL',
                                        onTap: (){
                                        setState(() {

                                          // i=2;
                                        });

                                        },
                                      ),
                                      Container(
                                        height: 10.0,
                                      ),
                                      NewPost(icon: FontAwesomeIcons.youtube,
                                      text: 'Youtube',
                                        onTap: (){
                                      setState(() {
                                        // i=3;

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
                                        onTap: (){
                                          setState(() {

                                            // i=0;
                                          });
                                          //i=0;
                                        },
                                      ),

                                    ],
                                  ),
                                ],

                              ),

                            ),
                          ]),
                        ),
                      ),

                    ));
              },
            ),
          ),


        ),
    );
  }
}

class NewPost extends StatefulWidget {
   final IconData icon;
  final String text;
  final Function onTap;

  const NewPost({Key key, this.icon, this.text, this.onTap,  }) : super(key: key);
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 125.0,
      height: 50.0,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          //background color of button
          side: BorderSide(
              width: 1, color: Colors.blue),
          //border width and color
          shape: RoundedRectangleBorder(
            //to set border radius to button
            borderRadius:
            BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          widget.onTap();
          //do something
        },
        label: Text(
          widget.text,
          style: Theme.of(context)
              .textTheme
              .bodyText2,
        ),
        icon: Icon(
          widget.icon,
        ),
      ),
    );
  }
}
