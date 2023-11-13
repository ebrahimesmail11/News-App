import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_setup_app/Model/article_Model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsTile extends StatefulWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  late final WebViewController controller;
  @override
  void initState() {
    controller=WebViewController()
    ..loadRequest(
      Uri.parse(widget.articleModel.url),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell (
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return WebViewWidget(
            controller: controller,
          );
        }));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
                    imageUrl:
                    widget.articleModel.image ??"https://www.cairo24.com/UploadCache/libfiles/79/5/600x338o/928.jpg",
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            widget.articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            widget.articleModel.subTitle ?? '',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
