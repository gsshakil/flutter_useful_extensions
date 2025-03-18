import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_useful_extensions/flutter_useful_extensions.dart';

void main() {
  group('StringExtensions', () {
    test('isNullOrEmpty returns true for empty strings', () {
      expect("".isNullOrEmpty, true);
    });

    test('capitalize capitalizes the first letter', () {
      expect("hello".capitalize(), "Hello");
    });

    test('isEmail validates correct email format', () {
      expect("test@example.com".isEmail, true);
      expect("invalid-email".isEmail, false);
    });
  });
}
