import 'package:objectbox/objectbox.dart';

@Entity()
class Newsmodel {
  @Id()
  int id = 0;
  @Unique()
  String? title;
  String? content;
  String? category;
  String? imageUrl;
  DateTime? date;

  Newsmodel({
    this.id = 0,
    this.category,
    this.content,
    this.date,
    this.imageUrl,
    this.title,
  });
}
