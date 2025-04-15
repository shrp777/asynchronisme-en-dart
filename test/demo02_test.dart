import 'package:test/test.dart';

import 'package:dartasync/demo02.dart' as demo02;

import 'package:dartasync/models/user.dart';

void main() async {
  final List<User> users = await demo02.fetchUsers();
  test(
    """La méthode "getUsers" avec le package Dio 
  doit récupérer une liste d'objets "Users" """,
    () => expect(users.runtimeType, List<User>),
  );

  test(
    'La liste d\'objets "Users" ne doit pas être vide',
    () => expect(users.isNotEmpty, true),
  );

  test(
    'Le 1er utilisateur de la liste doit se nommer "Leanne Graham"',
    () async {
      expect(users.first.name, 'Leanne Graham');
    },
  );
}
