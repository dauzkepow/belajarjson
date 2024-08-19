import 'dart:convert';

void main() {
  //-- Data JSON
  String jsonString = '''
  {
    "name":"Daus Kepow",
    "email":"daus@gmail.com",
    "age":30
  }

''';

  //--conversi String menjadi format data / object agar dapat name dan email
  Map<String, dynamic> user = jsonDecode(jsonString);

  //-- tampilkan
  print('Name : ${user['name']}');
  print('Email : ${user['email']}');
  print('Age : ${user['age']}');
}
