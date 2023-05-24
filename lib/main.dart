import 'package:flutter/material.dart';

import 'animated_containerdemo.dart';
import 'animated_curve.dart';
import 'fadein_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 141, 125, 168),
        fontFamily: 'Italic',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        //primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Implicit Animations"),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Animations 1'),
              subtitle: const Text('Animate opacity'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FadeInDemo(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 156, 26, 207), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              title: const Text('Animations 2'),
              subtitle: const Text('Animate color, borderRadius, and margin'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedContainerDemo(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 156, 26, 207), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListTile(
              title: const Text('Animations 3'),
              subtitle: const Text('Animation curves'),
              trailing: const Icon(Icons.keyboard_arrow_right_sharp),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AnimatedCurveDemo(),
                  ),
                );
              },
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Color.fromARGB(255, 156, 26, 207), width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
