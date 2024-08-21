//-- tambahkan json serializable
//untuk generator class model banyak parameter

import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String name;
  final String email;
  final int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  factory User.fromMap(Map<String, dynamic> map) => _$UserFromJson(map);

  Map<String, dynamic> toMap() => _$UserToJson(this);
}

//buka terminal
//dart run build_runner build --delete-conflicting-outputs
//pastikan ada file baru user.g.dart