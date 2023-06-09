import 'package:flutter/material.dart';

class Tech extends StatelessWidget {
  const Tech({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Technology',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: TechPage(title: 'Tech'),
    );
  }
}

class TechPage extends StatefulWidget {
  const TechPage({super.key, required this.title});

  final String title;

  @override
  State<TechPage> createState() => _TechPage();
}

class _TechPage extends State<TechPage> {
  String tech = 'Technology';
  String technologies = 'Django\nPython\nKotlin\nFlutter';

  // var show = ['Web', 'App', 'AI'];

  // List<Widget> list = new List<Widget>();
  // for (te in show) {
  //   list.add(
  //     Padding(
  //       padding: EdgeInsets.all(16.0),
  //       child: Text(te),
  //     )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // Text(
          //     technologies,
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              technologies,
              style: TextStyle(fontSize: 20),
            ),
          )
          // )),
        ],
      ),
    );
  }
}
