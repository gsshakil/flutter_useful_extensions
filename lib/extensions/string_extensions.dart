/// Extension on [String] to provide additional helper methods and properties.
extension StringExtensions on String {
  /// Checks if the string is null or empty after trimming whitespace.
  bool get isNullOrEmpty => trim().isEmpty;

  /// Checks if the string is not null or empty after trimming whitespace.
  bool get isNotNullOrEmpty => trim().isNotEmpty;

  /// Capitalizes the first letter of the string.
  String capitalize() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';

  /// Converts the string to title case by capitalizing each word.
  String toTitleCase() => split(' ').map((word) => word.capitalize()).join(' ');

  /// Checks if the string is a valid email address.
  bool get isEmail =>
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
          .hasMatch(this);

  /// Checks if the string is a valid phone number (supports optional country code).
  bool get isPhoneNumber =>
      RegExp(r'^(\\+\\d{1,3}[- ]?)?\\d{10}\$').hasMatch(this);

  /// Removes all whitespaces from the string.
  String removeWhitespace() => replaceAll(RegExp(r'\\s+'), '');

  /// Reverses the string.
  String reverse() => split('').reversed.join();
}
