class ArticleModel{
  final String? image;
  final String title;
  final String? subTitle;
  final String? author;
  final String? publishedAt;
  final String? content;
  final String url;
  ArticleModel({required this.image,required this.title,required this.subTitle,required this.author,required this.content,required this.publishedAt,required this.url});

  factory ArticleModel.fromJson(Map<String, dynamic> json){
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
      author: json['author'],
      publishedAt: json["publishedAt"],
      content: json["content"],
      url: json["url"],
    );
  }
}


