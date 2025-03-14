# Flutter Extensions

A collection of useful Flutter/Dart extensions to enhance productivity.

## Features

### String Extensions
- `isNullOrEmpty` - Checks if a string is null or empty.
- `isNotNullOrEmpty` - Checks if a string is not null or empty.
- `capitalize()` - Capitalizes the first letter of a string.
- `toTitleCase()` - Converts a string to title case.
- `isEmail` - Validates if the string is a valid email format.
- `isPhoneNumber` - Validates if the string is a valid phone number.
- `removeWhitespace()` - Removes all whitespace from a string.
- `reverse()` - Reverses the characters in a string.

### DateTime Extensions
- `format([String pattern])` - Formats a DateTime object into a string with a specified pattern.
- `isToday` - Checks if a DateTime object is today.
- `isYesterday` - Checks if a DateTime object is yesterday.
- `isTomorrow` - Checks if a DateTime object is tomorrow.
- `daysInMonth` - Returns the number of days in the month.
- `isLeapYear` - Checks if the year is a leap year.
- `timeAgo()` - Returns a human-readable "time ago" format.
- `copyWith({int? year, int? month, int? day, int? hour, int? minute, int? second})` - Creates a copy of a DateTime with modified values.

### List Extensions
- `unique()` - Returns a list with duplicates removed.
- `sorted([int Function(T a, T b)? compare])` - Returns a sorted list.
- `chunk(int size)` - Splits a list into chunks of the specified size.

### BuildContext Extensions
- `screenSize` - Returns the screen size as a `Size` object.
- `screenWidth` - Returns the screen width.
- `screenHeight` - Returns the screen height.
- `isDarkMode` - Checks if the current theme is in dark mode.

### Navigation Extensions
- `push(Widget page)` - Pushes a new page onto the navigation stack.
- `pushReplacement(Widget page)` - Replaces the current page with a new one.
- `pop()` - Pops the current page from the navigation stack.

### Other Extensions
- `toCurrency({String symbol})` - Converts a number to a currency format.
- `seconds` - Converts a number to a `Duration` in seconds.
- `minutes` - Converts a number to a `Duration` in minutes.
- `hours` - Converts a number to a `Duration` in hours.


## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_extensions:
    git:
      url: https://github.com/gsshakil/flutter_useful_extensions
```

Then, run:

```sh
dart pub get
```

## Usage

Import the package:

```dart
import 'package:flutter_extensions/flutter_useful_extensions.dart';
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

  //Please look at the example project for all the examples
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

