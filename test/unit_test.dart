import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Plus Operator', () {
    test('should add two numbers together', () {
      expect(1 + 1, 2);
    });
    test('should add three numbers together', () {
      expect(3 + 5 + 7, 15);
    });
    // test('[failure]should add three numbers together', () {
    //   expect(3 + 5 + 7, 1);
    // });
  });
  group('Minus Operator', () {
    test('subtract two numbers', () {
      expect(5 - 2, 3);
    });
  });
}
