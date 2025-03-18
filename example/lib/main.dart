import 'package:flutter/material.dart';
import 'package:flutter_useful_extensions/flutter_useful_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Useful Extensions Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ExtensionsDemo(),
    );
  }
}

class ExtensionsDemo extends StatelessWidget {
  const ExtensionsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    List<int> numbers = [4, 2, 2, 1, 3];

    return Scaffold(
      appBar: AppBar(title: Text("Flutter Extensions Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("String Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Is Null or Empty: ${"".isNullOrEmpty}"),
              Text("Is Not Null or Empty: ${"Hello".isNotNullOrEmpty}"),
              Text("Capitalize: ${"flutter".capitalize()}"),
              Text("Title Case: ${"hello flutter dev".toTitleCase()}"),
              Text("Is Email: ${"test@example.com".isEmail}"),
              Text("Is Phone Number: ${"01700000000".isPhoneNumber}"),
              Text("Remove Whitespace: ${"  flut ter  ".removeWhitespace()}"),
              Text("Reverse: ${"Flutter".reverse()}"),
              SizedBox(height: 16),
              
              Text("DateTime Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Format: ${now.format('yyyy-MM-dd')}"),
              Text("Is Today: ${now.isToday}"),
              Text(
                  "Is Yesterday: ${now.subtract(Duration(days: 1)).isYesterday}"),
              Text("Is Tomorrow: ${now.add(Duration(days: 1)).isTomorrow}"),
              Text("Days in Month: ${now.daysInMonth}"),
              Text("Is Leap Year: ${now.isLeapYear}"),
              Text("Time Ago: ${now.subtract(Duration(minutes: 3)).timeAgo()}"),
              Text("Copy With (Year): ${now.copyWith(year: 2025)}"),
              Text("Start Of Day: ${now.startOfDay}"),
              Text("End Of Day: ${now.endOfDay}"),
              Text("Minutes From: ${now.minutesFrom(DateTime(2024, 02, 12))}"),
              Text("Seconds From: ${now.secondsFrom(DateTime(2024, 02, 12))}"),
              Text("First Day Of Week: ${now.firstDayOfWeek}"),
              Text("Last Day Of Week: ${now.lastDayOfWeek}"),
              Text(
                  "Is Date Before Or Equal Today Concise: ${now.isDateBeforeOrEqualTodayConcise}"),
              SizedBox(height: 16),

              Text("List Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Unique: ${numbers.unique()}"),
              Text("Sorted: ${numbers.sorted()}"),
              Text("Chunks of 2: ${numbers.chunk(2)}"),
              Text("Is Null Or Empty: ${numbers.isNullOrEmpty}"),
              Text("Last Or Null: ${numbers.lastOrNull}"),
              Text("First Or Null: ${numbers.firstOrNull}"),
              Text("Distinct: ${numbers.distinct()}"),
              SizedBox(height: 16),

              Text("BuildContext Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Screen Size: ${context.screenSize}"),
              Text("Screen Width: ${context.screenWidth}"),
              Text("Screen Height: ${context.screenHeight}"),
              Text("Is Dark Mode: ${context.isDarkMode}"),
              Text("Status Bar Height: ${context.statusBarHeight}"),
              Text("Bottom Bar Height: ${context.bottomBarHeight}"),
              Text("Text Theme: ${context.textTheme}"),
              Text("Color Scheme: ${context.colorScheme}"),
              SizedBox(height: 16),


              Text("Navigation Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  context.push(SecondScreen());
                },
                child: Text('Go to Second Screen'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('/third',
                      arguments: 'Hello via Named Route');
                },
                child: Text("Go to Third Screen(Named)"),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.pushReplacement(ReplacementScreen());
                  },
                  child: Text("Go to Replacement Screen")),
              SizedBox(height: 16),

              Text("Other Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("To Currency: ${1234.56.toCurrency()}"),
              Text("5.seconds in duration: ${5.seconds}"),
              Text("3.minutes in duration: ${3.minutes}"),
              Text("2.hours in duration: ${2.hours}"),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = context.arguments;
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Second Screen'),
            Text('Arguments: ${args ?? "No Arguments"}'),
            ElevatedButton(
              onPressed: () {
                context.pop('Result from Second Screen');
              },
              child: Text('Pop with Result'),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = context.arguments;
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Third Screen"),
          Text('Arguments: ${args ?? "No Arguments"}'),
          ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Pop")),
        ],
      )),
    );
  }
}

class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Replaced Screen")),
      body: Center(child: Text("This screen replaced the previous one")),
    );
  }
}
