import 'package:objectbox/objectbox.dart';

@Entity()
class Usermodel {
  @Id()
  int id = 0;
  @Unique()
  String? email;
  String? name;
  String? password;
  String? photoUrl;

  Usermodel({
    this.id = 0,
    this.email = '',
    this.name = '',
    this.password = '',
    this.photoUrl = '',
  });
}
