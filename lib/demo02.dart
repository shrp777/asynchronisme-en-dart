/*
 * Démo 02 : Requête HTTP à une API REST avec le package Dio
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

Future<void> run() async {
  try {
    print('Loading...');
    print(await fetchUsers());
  } catch (e) {
    print(e);
  }
}
