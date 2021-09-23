import 'dart:developer';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signin/all_togather/details_info.dart';
import 'package:provider/provider.dart';
import 'package:signin/providers/counter_provider.dart';


// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Home",
//           style: TextStyle(
//               color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
//         ),
//         leading: IconButton(
//           onPressed: () {},
//           icon: Icon(Icons.menu),
//         ),
//         actions: [
//           Padding(
//               padding: EdgeInsets.only(right: 20.0),
//               child: Icon(
//                 CupertinoIcons.bell,
//                 size: 26.0,
//               )),
//           Padding(
//               padding: EdgeInsets.only(right: 20.0),
//               child: IconButton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {},
//               )),
//         ],
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Expanded(
//               child: ListView.builder(
//                   itemCount: 10,
//                 shrinkWrap: true,
//                 physics: ScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (BuildContext,index){
//                     return Container(
//                       padding: EdgeInsets.all(5.0),
//                       child: Column(
//                         children: [
//                           HorizntalList(),
//                         ],
//                       ),
//                     );
//                 },
//               )
//
//           ),
//           Expanded(
//             child: ListView.builder(
//               shrinkWrap: true,
//               physics: ScrollPhysics(),
//               itemCount: 30,
//               itemBuilder: (BuildContext, index) {
//                 return Container(
//                   padding: EdgeInsets.all(5.0),
//                   child: Column(
//                     children: [
//                       VerticalList(),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//
//       // body: ListView.builder(
//       //   scrollDirection: Axis.horizontal,
//       //     itemCount: 10,
//       //     itemBuilder: (BuildContext,index){
//       //       return Column(
//       //         children: [
//       //           GroupList(),
//       //           SizedBox(
//       //             height: 5.0,
//       //           ),
//       //
//       //
//       //         ],
//       //
//       //       );
//       //     }
//       // ),
//     );
//   }
// }
//
// class HorizntalList extends StatefulWidget {
//   @override
//   _HorizntalListState createState() => _HorizntalListState();
// }
//
// class _HorizntalListState extends State<HorizntalList> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ExtendedImage.network(
//           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJBr8z7ETp2B8yi0JEV3AsjYYBNjM5p7K-Hg&usqp=CAU',
//         ),
//       ],
//     );
//   }
// }
//
// class VerticalList extends StatefulWidget {
//   @override
//   _VerticalListState createState() => _VerticalListState();
// }
//
// class _VerticalListState extends State<VerticalList> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       highlightColor: Colors.black,
//       splashColor: Colors.black,
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => DetailsInfo()));
//       },
//       child: Container(
//         decoration: BoxDecoration(
//             // color: Colors.grey,
//             ),
//         child: Row(
//           children: [
//             SizedBox(
//               width: 10.0,
//             ),
//             CircleAvatar(
//               radius: 40.0,
//               backgroundColor: Colors.lightBlue,
//               child: CircleAvatar(
//                 radius: 38.0,
//                 backgroundImage: ExactAssetImage(
//                   'Images/asad.jpg',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 10.0,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Name",
//                     style: TextStyle(fontSize: 20.0),
//                   ),
//                   Text(
//                     "Father Name",
//                     style: TextStyle(fontSize: 20.0),
//                   ),
//                 ],
//               ),
//             ),
//             IconButton(
//                 padding: EdgeInsets.symmetric(horizontal: 50.0),
//                 icon: Icon(
//                   CupertinoIcons.ellipsis_vertical,
//                   size: 30.0,
//                 ),
//                 onPressed: () {})
//           ],
//         ),
//       ),
//     );
//   }
// }

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          title: Center(
            child: Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
          ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:40.0),
            child: Row(
              children: [
    Icon(
    CupertinoIcons.bell,
      size: 26.0,
    ),

    Count(),],
            ),
          )

        ],
      ),




    SliverToBoxAdapter(
    child: Container(
    height: 200.0,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 10,
    itemBuilder: (context, index) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0,),
        child:SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
             child:ExtendedImage.network(
               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJBr8z7ETp2B8yi0JEV3AsjYYBNjM5p7K-Hg&usqp=CAU',
             ),),

            ],
          ),
        ),
        // decoration: BoxDecoration(
        //   color: Colors.lightBlue,
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
      );
    },
    ),
    ),
    ),

    SliverList(
    delegate: SliverChildBuilderDelegate(
    (context, index){
    return Material(
    child: InkWell(
    highlightColor: Colors.black,
    splashColor: Colors.black,
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailsInfo()));
    },
    child: Container(
      padding: EdgeInsets.all(12.0,),
      decoration: BoxDecoration(
          color: Colors.black12,
          ),
      child: Row(
        children: [
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            radius: 40.0,
            backgroundColor: Colors.lightBlue,
            child: CircleAvatar(
              radius: 38.0,
              backgroundImage: ExactAssetImage(
                'Images/asad.jpg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  "Father Name",
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          IconButton(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 30.0,
              ),
              onPressed: () {})
        ],
      ),
    ),

    )
    );
    },
    childCount: 30,

    ),
    ),
  ],





    );
  }
}

class Count extends StatelessWidget{
  Count({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(' ${context.watch<Counter>().count}',
        key: Key('counterState'),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.0));
  }
}