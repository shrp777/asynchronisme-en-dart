import 'package:dartasync/demo01.dart' as demo01;
import 'package:test/test.dart';

void main() {
  test('fetchMessageFromFakeAPI', () async {
    final String message = await demo01.fetchMessageFromFakeAPI();
    expect(message, "Hello, World!");
  });
  test('getAndFormatMessage', () async {
    final String message = await demo01.getAndFormatMessage();
    expect(message, "📥 Hello, World!");
  });
}
