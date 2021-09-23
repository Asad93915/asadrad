

import 'package:flutter/material.dart';
import 'package:signin/model_class_task/model_class.dart';
import 'package:signin/model_services/model_services_api.dart';

class ApiTask extends StatefulWidget {
  @override
  _ApiTaskState createState() => _ApiTaskState();
}

class _ApiTaskState extends State<ApiTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Task",style: Theme.of(context).textTheme.bodyText2,),
      ),
      body: Column(
        children: [
          Expanded(
              // ignore: missing_required_param
              child: FutureBuilder<List<Data>>(
                future: ModelApiServices().fetchDataArticle(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          title: Text(snapshot.data[index].email),
                          subtitle: Text(snapshot.data[index].userName),

                          // trailing: Text(snapshot.data[index].firstname),
                          // trailing: Column(
                          //   children: [
                          //     Text(snapshot.data[index].firstname),
                          //     Text(snapshot.data[index].lastname),
                          //   ],
                          // ),
                        );
                      },
                    );
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
                },
              )
          )
        ],
      ),
    );
  }
}
