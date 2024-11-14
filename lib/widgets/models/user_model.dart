import 'package:objectbox/objectbox.dart';

@Entity()
class UserModel {
  @Id()
  int id = 0;
  @Unique()
  String? email;
  String? name;
  String? password;
  String? photoUrl;

  UserModel({
    this.email,
    this.name,
    this.password,
    this.photoUrl,
  });
}
