import 'package:flutter/material.dart';
import 'package:signin/models/news_response.dart';
import 'package:signin/services/news_services_api.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Discover",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Text(
            "Find Interasting articels and details ",
          ),
          Container(
            height: 30.0,
          ),
          Expanded(
              child: FutureBuilder<List<Articles>>(
            future: NewsApiServices().fetchNewsArticle(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].author),

                      subtitle:Text(snapshot.data[index].description,maxLines: 3,overflow: TextOverflow.ellipsis,) ,
                      leading: snapshot.data[index].urlToImage !=null ?
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                            image: NetworkImage(snapshot.data[index].urlToImage)
                          )
                        ),
                      ):null,
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          )),
        ],
      ),
    );
  }
}
