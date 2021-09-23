import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //   children: [
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
      //     Container(color: Colors.blue,margin: EdgeInsets.all(10.0)),
      //   ],
      // ),
class GridViewBuilder extends StatefulWidget {
  @override
  _GridViewBuilderState createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {

 List image=["Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg","Images/asad.jpg",];
 List name=["Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad","Asad",];
  // final List<Map> myProducts =
  // List.generate(40, (index) => {"id": index, "name": "Product $index,i"})
  //     .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("GridViewBuilder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 0.7,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
            ),
            itemCount: image.length,
            itemBuilder: (BuildContext ctx, index,) {
              return Container(
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

                // Text(myProducts[index]["name"]),

                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                ),

              );
            }),
      ),
    );
  }
}




