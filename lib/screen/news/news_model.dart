import 'package:objectbox/objectbox.dart';

@Entity()
class NewsModel {
  @Id()
  int id = 0;
  String? title;
  String? content;
  String? categorynews;
  DateTime? date;
  String? imageUrl;

  NewsModel({
    this.categorynews = '',
    this.content = '',
    this.date,
    this.id = 0,
    this.imageUrl,
    this.title = '',
  });
}
