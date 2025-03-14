extension ListExtensions<T> on List<T> {
  List<T> unique() => toSet().toList();
  List<T> sorted([int Function(T a, T b)? compare]) => [...this]..sort(compare);
  List<List<T>> chunk(int size) => [for (var i = 0; i < length; i += size) sublist(i, (i + size) > length ? length : (i + size))];
}