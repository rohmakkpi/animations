import 'package:flutter/material.dart';

const owlUrl =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({Key? key}) : super(key: key);

  @override
  State<FadeInDemo> createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Animate opacity",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Column(children: <Widget>[
              const Text(
                "Animate opacity with AnimatedOpacity",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.network(owlUrl),
              ),
              TextButton(
                child: const Text(
                  'Show Details',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                onPressed: () => setState(() {
                  opacity = 1;
                }),
              ),
              AnimatedOpacity(
                duration: const Duration(seconds: 2),
                opacity: opacity,
                child: Column(
                  children: const [
                    Text('Type: Owl'),
                    Text('Age: 39'),
                    Text('Employment: None'),
                  ],
                ),
              )
            ])));
  }
}
