

import 'package:flutter/material.dart';

class GroupTask extends StatefulWidget {
  @override
  _GroupTaskState createState() => _GroupTaskState();
}

class _GroupTaskState extends State<GroupTask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group",style: Theme.of(context).textTheme.bodyText2,),
      ),
      body: ListView.builder(

        itemCount: 4,
        itemBuilder: (BuildContext,index){
          return Column(
            children: [
              GroupList(),
              SizedBox(
                height: 5.0,
              )
                ],

          );
        }

      ),
    );
  }
}

class GroupList extends StatefulWidget {
  @override
  _GroupListState createState() => _GroupListState();
}

class _GroupListState extends State<GroupList> {
  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior:Clip.antiAlias ,
      margin: EdgeInsets.only(left: 8.0,right: 8.0,top: 10.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Container(
            height: 10.0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: ExactAssetImage('Images/asad.jpg',),
                ),
              ),
             Container(
                width: 15.0,
              ),
              Text(
                "AsAD Ali ",style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0,top: 10.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.justify,),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0,right:15.0,top: 10.0,bottom: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                // Text(" 06-June-2021 12:25PM  ",),
                Text(" 06-جون-2021 12:25PM  ",),
              ],
            ),
          ),
        ],
      ),
    );

  }
}

