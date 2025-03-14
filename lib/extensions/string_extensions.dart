extension StringExtensions on String {
  bool get isNullOrEmpty => trim().isEmpty;
  bool get isNotNullOrEmpty => trim().isNotEmpty;
  String capitalize() =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
  String toTitleCase() => split(' ').map((word) => word.capitalize()).join(' ');
  bool get isEmail =>
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\$')
          .hasMatch(this);
  bool get isPhoneNumber =>
      RegExp(r'^(\+\d{1,3}[- ]?)?\d{10}\$').hasMatch(this);
  String removeWhitespace() => replaceAll(RegExp(r'\s+'), '');
  String reverse() => split('').reversed.join();
}
