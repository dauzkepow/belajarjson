// ignore_for_file: public_member_api_docs, sort_constructors_first
//-- user class models = cara manual
class User {
  final String name;
  final String email;
  final int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  // untuk membuat instance User baru dari struktur Map.
  User.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        email = map['email'],
        age = map['age'];

  //  mengubah instance User menjadi Map.
  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'age': age,
      };
}


//pemanggilan kode lebih aman dari salah ketik