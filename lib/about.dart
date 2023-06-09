import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffb66fcf1)),
        useMaterial3: true,
      ),
      home: const AboutPage(title: 'Playing with Flutter'),
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({super.key, required this.title});
  final String title;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final textBox = TextEditingController();
  String heading = 'About Me';
  String intro = 'Pranshu is a tech enthusiast and self-taught programer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  heading,
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(intro),
              ),
            ]));
  }
}
