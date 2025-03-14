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
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Useful Extensions Demo")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("String Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("hello world".capitalize()),
              Text("   spaces removed   ".removeWhitespace()),
              Text("test@example.com is email: ${"test@example.com".isEmail}"),
              SizedBox(height: 16),
              Text("DateTime Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Today is today: ${DateTime.now().isToday}"),
              Text(
                  "Yesterday was yesterday: ${DateTime.now().subtract(Duration(days: 1)).isYesterday}"),
              SizedBox(height: 16),
              Text("List Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Unique List: ${[1, 2, 2, 3, 4, 4].unique()}"),
              SizedBox(height: 16),
              Text("BuildContext Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Screen Width: ${context.screenWidth}"),
              Text("Is Dark Mode: ${context.isDarkMode}"),
              SizedBox(height: 16),
              Text("Other Extensions:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Currency Format: ${1000.5.toCurrency()}"),
              Text("2 Hours in Seconds: ${2.hours.inSeconds}"),
            ],
          ),
        ),
      ),
    );
  }
}
