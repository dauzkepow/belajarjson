// ignore_for_file: public_member_api_docs, sort_constructors_first
//-- user class models
class User {
  final String name;
  final String email;
  final int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  User.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        email = map['email'],
        age = map['age'];

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'age': age,
      };
}
