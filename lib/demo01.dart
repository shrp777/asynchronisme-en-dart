/*
 * Démo 01 : Simulation d'une opération asynchrone avec Future.delayed
 */

//opération asynchrone
Future<String> getAndFormatMessage() async {
  final String message = await fetchMessageFromFakeAPI();
  return '📥 $message';
}

//simule l'appel à une API pour obtenir une valeur de façon asynchrone
Future<String> fetchMessageFromFakeAPI() {
  return Future.delayed(const Duration(seconds: 2), () => 'Hello, World!');
}

Future<void> run() async {
  print('Loading...');
  print(await getAndFormatMessage());
}
/*
Affiche :

Loading...
Message: Hello, World!

*/