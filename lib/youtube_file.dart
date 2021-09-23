import 'package:dio/dio.dart';

mixin MyYoutubeInfo {
  /*It can support following urls of Youtube:
  * 1: https://www.youtube.com/watch?v=ElG5-nXD0B8
  * 2: https://www.youtube.com/watch?v=kJQP7kiw5Fk&list=PL8A83124F1D79BD4F
  * 3: https://www.youtube.com/watch?v=OPf0YbXqDm0&list=PL8A83124F1D79BD4F&index=4
  * */
  static String getID(String url) {
    url = url.split('&list=').elementAt(0);
    url = url.replaceAll('https://www.youtube.com/watch?v=', '');
    url = url.replaceAll('https://m.youtube.com/watch?v=', '');
    return url;
  }

  static String getThumbnailByUrl(String url) {
    String videoID = getID(url);
    return 'https://img.youtube.com/vi/$videoID/0.jpg';
  }

  static String getThumbnailByID(String videoID) {
    return 'https://img.youtube.com/vi/$videoID/0.jpg';
  }

  // /API type GET/
  static Future<YoutubeVideoInfo> getVideoInfo(
      String videoUrl, {
        Function(String) onError,
      }) async {
    try {
      Response response = await Dio()
          .get('https://www.youtube.com/oembed?url=$videoUrl&format=json');
      print('Youtube Video Info: ${response.data.toString()}');
      return YoutubeVideoInfo.fromJson(response.data);
    } on Exception catch (e) {
      print('Exception: $e');
      if (onError != null) {
        onError(e.toString());
      }
      return null;
    }
  }
}

/*Data Model of https://www.youtube.com/oembed?url=https://www.youtube.com/watch?v=ElG5-nXD0B8&format=json*/
class YoutubeVideoInfo {
  String thumbnailUrl;
  String authorName;
  int thumbnailHeight;
  String html;
  String providerUrl;
  String title;
  String providerName;
  String type;
  String version;
  int height;
  int width;
  String authorUrl;
  int thumbnailWidth;

  YoutubeVideoInfo(
      {this.thumbnailUrl,
        this.authorName,
        this.thumbnailHeight,
        this.html,
        this.providerUrl,
        this.title,
        this.providerName,
        this.type,
        this.version,
        this.height,
        this.width,
        this.authorUrl,
        this.thumbnailWidth});

  YoutubeVideoInfo.fromJson(Map<String, dynamic> json) {
    thumbnailUrl = json['thumbnail_url'];
    authorName = json['author_name'];
    thumbnailHeight = json['thumbnail_height'];
    html = json['html'];
    providerUrl = json['provider_url'];
    title = json['title'];
    providerName = json['provider_name'];
    type = json['type'];
    version = json['version'];
    height = json['height'];
    width = json['width'];
    authorUrl = json['author_url'];
    thumbnailWidth = json['thumbnail_width'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail_url'] = this.thumbnailUrl;
    data['author_name'] = this.authorName;
    data['thumbnail_height'] = this.thumbnailHeight;
    data['html'] = this.html;
    data['provider_url'] = this.providerUrl;
    data['title'] = this.title;
    data['provider_name'] = this.providerName;
    data['type'] = this.type;
    data['version'] = this.version;
    data['height'] = this.height;
    data['width'] = this.width;
    data['author_url'] = this.authorUrl;
    data['thumbnail_width'] = this.thumbnailWidth;
    return data;
  }
}