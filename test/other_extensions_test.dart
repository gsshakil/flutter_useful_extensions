import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_useful_extensions/flutter_useful_extensions.dart';

void main() {
  group('NumExtensions', () {
    test('toCurrency formats correctly', () {
      expect(10.5.toCurrency(), '\$10.50');
    });
  });
}
