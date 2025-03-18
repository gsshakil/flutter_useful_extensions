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
- `startOfDay` - Returns a [DateTime] object representing the start of the day (00:00:00).
- `endOfDay` - Returns a [DateTime] object representing the end of the day (23:59:59).
- `minutesFrom(DateTime dateTime)` - Returns the difference in minutes from another [dateTime].
- `secondsFrom(DateTime dateTime)` - Returns the difference in seconds from another [dateTime].
- `firstDayOfWeek` - Returns the first day of the current week.
- `lastDayOfWeek` - Returns the last day of the current week.
- `isDateBeforeOrEqualTodayConcise` - Returns `true` if this date is before or equal to today.

### List Extensions
- `isNullOrEmpty` - Returns `true` if the list is null or empty.
- `lastOrNull` - Returns the last element or null if the list is empty.
- `firstOrNull` - Returns the first element or null if the list is empty.
- `distinct()` - Returns a new list with distinct elements.
- `unique()` - Returns a list with duplicates removed.
- `sorted([int Function(T a, T b)? compare])` - Returns a sorted list.
- `chunk(int size)` - Splits a list into chunks of the specified size.

### BuildContext Extensions
- `screenSize` - Returns the screen size as a `Size` object.
- `screenWidth` - Returns the screen width.
- `screenHeight` - Returns the screen height.
- `isDarkMode` - Checks if the current theme is in dark mode.
- `statusBarHeight` - Returns the height of the status bar.
- `bottomBarHeight` - Returns the height of the bottom navigation bar (or safe area).
- `textTheme` - Returns the current [TextTheme] for the context.
- `colorScheme` - Returns the current [ColorScheme] for the context.

### Navigation Extensions
- `routeName` - Gets the current route's name.
- `routeSettings` - Gets the current route's settings.
- `arguments` - Gets the current route's arguments.
- `pop<T>([T? result])` - Pops the current route.
- `canPop()` - Checks if the navigator can pop.
- `push<T>(Widget screen, {settings, maintainState, fullscreenDialog, rootNavigator})` - Pushes a new screen.
- `pushNamed<T>(String routeName, {arguments, rootNavigator})` - Pushes a named route.
- `pushAndRemoveUntil<T>(Widget screen, {settings, maintainState, fullscreenDialog, routes, rootNavigator})` - Pushes a screen and removes routes.
- `pushNamedAndRemoveUntil<T>(String routeName, {arguments, rootNavigator})` - Pushes a named route and removes routes.
- `pushReplacement<T>(Widget screen, {settings, maintainState, fullscreenDialog, rootNavigator, result})` - Replaces the current screen.
- `pushReplacementNamed<T, TO>(String routeName, {result, arguments, rootNavigator})` - Replaces the current named route.

### Widget Extensions
- `borderAll(Color color, {double width = 1.5, double radius = 0.0})` - Wraps the widget with a container that has a border and optional corner radius.
- `padding{double left = 0.0, double right = 0.0, double top = 0.0, double bottom = 0.0}` - Adds custom padding around the widget.
- `paddingAll(double value)` - Adds equal padding on all sides.
- `paddingSymmetric({double horizontal = 0.0, double vertical = 0.0})` - Pops the current page from the navigation stack.

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

