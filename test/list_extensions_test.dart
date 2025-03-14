import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_useful_extensions/flutter_useful_extensions.dart';

void main() {
  group('ListExtensions', () {
    test('unique removes duplicates', () {
      expect([1, 2, 2, 3].unique(), [1, 2, 3]);
    });
  });
}
