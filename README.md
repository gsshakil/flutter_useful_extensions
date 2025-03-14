# Flutter Extensions

A collection of useful Flutter/Dart extensions to enhance productivity.

## Features

- String extensions (e.g., `capitalize()`, `isEmail`)
- DateTime extensions (e.g., `timeAgo()`, `isToday`)
- List extensions (e.g., `unique()`, `chunk()`)
- BuildContext extensions (e.g., `screenWidth`, `isDarkMode`)
- Navigation extensions (e.g., `push()`, `pop()`)
- Numeric and other useful extensions

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_extensions:
    git:
      url: https://github.com/your-repo/flutter_extensions.git
```

Then, run:

```sh
dart pub get
```

## Usage

Import the package:

```dart
import 'package:flutter_extensions/flutter_extensions.dart';
```

### Example Usage

```dart
void main() {
  String text = "hello world";
  print(text.capitalize()); // Output: Hello world

  DateTime now = DateTime.now();
  print(now.timeAgo()); // Output: Just now, 1 min ago, etc.

  List<int> numbers = [1, 2, 2, 3, 4, 4];
  print(numbers.unique()); // Output: [1, 2, 3, 4]
}
```

## Testing

Run the unit tests with:

```sh
dart test
```

## Contributions

Contributions are welcome! Please submit a pull request with your changes.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

