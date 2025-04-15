/*
 * Démo 03 : Requête HTTP  à une API REST avec le package http
 */

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/user.dart';

const String api = 'https://jsonplaceholder.typicode.com/users';
/* Obtention de données depuis une API REST avec http */
Future<List<User>> fetchUsers() async {
  try {
    final response = await http.get(Uri.parse(api));

    //parse les données JSON
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

    //convertit les données JSON en une liste d'objets User
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  } catch (e) {
    rethrow;
  }
}

Future<void> run() async {
  try {
    print('Loading...');
    print(await fetchUsers());
  } catch (e) {
    print(e);
  }
}
