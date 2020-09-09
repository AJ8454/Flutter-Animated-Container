import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container 2'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            height: isExpanded ? 250 : 150,
            width: isExpanded ? 250 : 150,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(isExpanded ? 32 : 4)),
                color: isExpanded ? Colors.green : Colors.amber),
            curve: Curves.bounceOut,
          ),
        ),
      ),
    );
  }
}
