/*
 * Démo 05 : appel à une fonction asynchrone émulée et gestion d'erreur avec try / catch / finally
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

Future<void> run() async {
  print('Loading...');
  try {
    final bool result = await getRandomAsyncResult();
    print("It's a $result success !");
  } catch (e) {
    print(e);
  } finally {
    print("End");
  }
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