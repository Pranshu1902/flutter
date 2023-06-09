import 'package:flutter/material.dart';

void main() {
  runApp(const Combined());
}

class Combined extends StatelessWidget {
  const Combined({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: new Column(
        children: [
          new MyApp(),
          new CustomApp(),
          // const MissionField(),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text(
          'Hello World',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
    // return MaterialApp(
    //   title: 'Flutter layout demo',
    //   color: Colors.lightGreenAccent,
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Flutter layout demo'),
    //     ),
    //     body: const Center(
    //       child: Text('Hello World'),
    //     ),
    //   ),
    // );
  }
}

class CustomApp extends StatelessWidget {
  const CustomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Text(
          'Welcome to Custom Widget',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class _MyCustomHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null, tooltip: 'Play', child: const Icon(Icons.add)),
    );
  }
}


// class MissionPage extends StatefulWidget {
//   // const MissionPage({super.key});

//   // final String title;

//   @override
//   State<MissionPage> createState() => MissionField();
// }

// class MissionField extends State<MissionPage> {
//   var mission = 0;

//   void increment() {
//     setState(() {
//       mission++;
//     });
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       child: const Center(
//         child: Text(
//           mission,
//           textDirection: TextDirection.ltr,
//           style: TextStyle(
//             fontSize: 32,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }
