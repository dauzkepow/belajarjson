import 'dart:convert';

//json-generator
import 'package:dart_json_example/generator/user.dart';

//json- manual
//import 'user.dart';

void main() {
  //-- Data JSON
  String jsonString = '''
  {
    "name":"Daus Kepow",
    "email":"daus@gmail.com",
    "age":30
  }

''';

  //-- conversi String menjadi format data - manual tanpa class models
  Map<String, dynamic> user = jsonDecode(jsonString);

  //1.-- tampilkan manual
  // bisa bikin salah ketik
  print('Name : ${user['name']}'); //Daus Kepow
  print('Email : ${user['email']}'); //daus@gmail.com
  print('Age : ${user['age']}\n'); //30

  //2.-- tampilkan dalam metode class models perlu file user.dart
  //Map<String, dynamic> user = jsonDecode(jsonString);
  final userObj = User.fromMap(user);

  print('Name = ${userObj.name}'); //Daus Kepow
  print("Email = ${userObj.email}\n"); //daus@gmail.com

  //jadikan encode
  //print(user);
  String userString = jsonEncode(user);
  print('String JSON = $userString');
  //{"name":"Daus Kepow","email":"daus@gmail.com","age":30}
}
