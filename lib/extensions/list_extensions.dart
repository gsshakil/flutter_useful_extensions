/// Extension on [List] to add common helper methods.
extension ListExtensions<T> on List<T> {
  /// Returns `true` if the list is null or empty.
  bool get isNullOrEmpty => isEmpty;

  /// Returns the last element or null if the list is empty.
  T? get lastOrNull => isNotEmpty ? last : null;

  /// Returns the first element or null if the list is empty.
  T? get firstOrNull => isNotEmpty ? first : null;

  /// Divides the list into chunks of [chunkSize].
  List<List<T>> chunk(int chunkSize) {
    List<List<T>> chunks = [];
    for (var i = 0; i < length; i += chunkSize) {
      chunks.add(sublist(i, i + chunkSize > length ? length : i + chunkSize));
    }
    return chunks;
  }

  /// Returns a new list with distinct elements.
  List<T> distinct() => toSet().toList();

  /// Returns a new list with duplicate values removed.
  List<T> unique() => toSet().toList();

  /// Returns a new sorted list using the provided compare function or default sorting.
  List<T> sorted([int Function(T a, T b)? compare]) => [...this]..sort(compare);
}
