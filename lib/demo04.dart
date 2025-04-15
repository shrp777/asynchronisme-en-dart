/*
 * Démo 04 : Requête HTTP avec le package Dio et syntaxe then / catchError
 */
import 'package:dio/dio.dart';

import 'models/user.dart';

const String api = 'https://jsonplaceholder.typicode.com/users';

/* Obtention de données depuis une API REST avec Dio */
Future<List<User>> fetchUsers() async {
  final response = await Dio().get(api);

  //convertit les données JSON en une liste d'objets User
  return response.data.map<User>((json) => User.fromJson(json)).toList();
}

void run() {
  print('Loading...');
  fetchUsers()
      .then((value) => print(value))
      .catchError((error) => print(error));
}
