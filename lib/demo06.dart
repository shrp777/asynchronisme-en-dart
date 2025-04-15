/*
 * Démo 06 : appel à une fonction asynchrone émulée et gestion d'erreur avec then
 */

//simule l'appel à une API pour obtenir une valeur de façon asynchrone
import 'dart:math';

Future<bool> getRandomAsyncResult() async {
  return Future.delayed(const Duration(seconds: 1), () {
    final randomBool = Random().nextBool();
    if (randomBool) {
      return randomBool;
    } else {
      throw Exception("It's an error !");
    }
  });
}

void run() {
  print('Loading...');
  getRandomAsyncResult()
      .then(
        (result) => print("It's a $result success !"),
        onError: (error) => print(error),
      )
      .then((_) => print("End"));
}
/*
Affiche :

Loading...
Result: It's a true success !
End

ou

Loading...
Exception: It's an error !
End

*/