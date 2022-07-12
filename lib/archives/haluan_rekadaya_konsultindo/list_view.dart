import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: BuildWidget(),
    ),
  );
}

class BuildWidget extends StatelessWidget {
  const BuildWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> languages = [
      'Dart',
      'Java',
      'C++',
      'Python',
    ];
    double styling = 12.0;
    List<MaterialColor> colors = [
      Colors.red,
      Colors.orange,
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, itemCount) {
          return Container(
            margin: EdgeInsets.only(bottom: styling),
            padding: EdgeInsets.symmetric(vertical: styling),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: colors,
              ),
            ),
            child: Center(
              child: Text(
                languages.elementAt(itemCount).toUpperCase(),
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: styling,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
