import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTask extends StatefulWidget {
  @override
  _ListTaskState createState() => _ListTaskState();
}

class _ListTaskState extends State<ListTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("List Task",style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(itemCount: 4,
      itemBuilder: (BuildContext context,index){

        return Column(
          children: [
            ListItem(),
            SizedBox(
              height: 10.0,
            )
          ],
        );

      },
      ),

    );
  }
}

class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {

  int index=0 ;

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      shadowColor: Colors.brown,

      child: Column (
        children: [
          Container(
            //color: Colors.brown,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 8.0,bottom: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: ExactAssetImage('Images/asad.jpg'),
                  ),
                ),


                Text('Asad  $index ',style: TextStyle(color: Colors.white),),

              ],
            ),
          ),
          Divider(
            height: 5,
            color: Colors.grey,
          ),

          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 5.0),
            child: Text("ASSSAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
          ),


          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                TextButton(
                  style:TextButton.styleFrom(
                  primary: Colors.grey,
                  ),
                  onPressed: (){},
                  child:Text('YES',style: TextStyle(color: Colors.grey,), ),
                ),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.grey,

                  ),
                    onPressed: (
                        ){},
                    child: Text('NO',style: TextStyle(color: Colors.grey,),)),
              ],
            ),
          ),

        ],
      ),
    );;
  }
}

