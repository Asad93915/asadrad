

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//
// class SilverList extends StatefulWidget {
//   @override
//   _SilverListState createState() => _SilverListState();
// }
//
// class _SilverListState extends State<SilverList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               backgroundColor: Colors.amber,
//               title: Text('Kindacode.com'),
//               expandedHeight: 30,
//               collapsedHeight: 150,
//             ),
//             SliverAppBar(
//               backgroundColor: Colors.green,
//               title: Text('Have a nice day'),
//               floating: true,
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                     (BuildContext context, int index) {
//                   return Card(
//                     margin: EdgeInsets.all(15),
//                     child: Container(
//                       color: Colors.blue[100 * (index % 9 + 1)],
//                       height: 80,
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Item $index",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                   );
//                 },
//                 childCount: 20, // 1000 list items
//               ),
//             ),
//           ],
//         ));
//   }
// }


class SliverListt extends StatefulWidget {
  @override
  _SliverListtState createState() => _SliverListtState();
}

class _SliverListtState extends State<SliverListt> {

  List image=["Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg",];
  List name=["Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad",];

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.teal,
          expandedHeight:70.0,
          floating: true,
          pinned: false,
          snap: true,
          title: Container(child: Column(
            children: [
              Text("Whatsapp",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 20),),
              Container(
                height: 10.0,
              ),
              Row(
                children: [
                  Text("Whatsapp",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize:14),),
                  Container(
                    width: 70.0,
                  ),
                  Text("Status",style: TextStyle(color: Colors.white,fontSize: 14.0,),),
                  Container(
                    width: 60.0,
                  ),
                  Text("Call",style: TextStyle(color: Colors.white,fontSize: 14.0,),),

                ],
              ),
            ],
          )),

          actions: [
            Icon(FontAwesomeIcons.search,size:15.0 ,),
            Container(
              width: 15,

            ),

          ],
        ),

          SliverFixedExtentList(


            itemExtent: 20.0,
            delegate: SliverChildListDelegate([
              // Container(color: Colors.red,),
              // Container(color: Colors.black,),
              // Container(color: Colors.yellow,),
              // Container(
              //   color: Colors.teal,
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 20.0,
              //       ),
              //       Text("Chats",style: TextStyle(color: Colors.white,fontSize: 14.0),),
              //       Container(
              //         width: 70.0,
              //       ),
              //       Text("Status",style: TextStyle(color: Colors.white,fontSize: 14.0,),),
              //       Container(
              //         width: 60.0,
              //       ),
              //       Text("Call",style: TextStyle(color: Colors.white,fontSize: 14.0,),),
              //
              //
              //     ],
              //   ),
              // ),
            ]),
          ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
            (context, index){
              return Material(
                type: MaterialType.transparency,
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.0,
                      width: 300.0,
                      color: Colors.black12,
                      child: Text('Asad Ali $index',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 16.0),)),
                ),
              );
            },
          childCount: 15,

        ),
            ),


        SliverGrid(
          delegate: SliverChildBuilderDelegate(
              (context,index){

                return Material(
                  type: MaterialType.transparency,
                  child: Container(
                  alignment: Alignment.center,
                  child:SingleChildScrollView(
                  child: Column(
                  children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(image[index],)),
                  Text(name[index],style: TextStyle(fontSize: 20),),
                  ],
                  ),
                  ),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
            childCount: 12,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 0.7,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),

        ),


    //Sliver to box adpter
    SliverToBoxAdapter(
      child: Container(
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Grid.Header",style: TextStyle(fontSize: 20.0,color: Colors.black,),),
        ),
      ),

    ),

    ],
      );
  }
}

