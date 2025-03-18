import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_useful_extensions/flutter_useful_extensions.dart';

void main() {
  group('DateTimeExtensions', () {
    test('format returns correct date format', () {
      DateTime date = DateTime(2025, 3, 10);
      expect(date.format(), '2025-03-10');
    });

    test('isToday returns true for today\'s date', () {
      expect(DateTime.now().isToday, true);
    });
  });
}
