import 'package:meu_app_testes/meu_app_testes.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

    test('calculat1', () {
    expect(calculate(), greaterThan(41));
  });
}
