// import 'package:flutter/material.dart';

// class TabFooter extends StatelessWidget {
//   const TabFooter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: const TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.directions_car)),
//                 Tab(icon: Icon(Icons.directions_transit)),
//                 Tab(icon: Icon(Icons.directions_bike)),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
      home: TabFooter(title: 'Tech'),
    );
  }
}

class TabFooter extends StatefulWidget {
  const TabFooter({super.key, required this.title});

  final String title;

  @override
  State<TabFooter> createState() => _TabFooter();
}

class _TabFooter extends State<TabFooter> {
  String tech = 'Technology';
  String technologies = 'Django\nPython\nKotlin\nFlutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
