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
    List<String> chars = ['A', 'B', 'C', 'D', 'E'];
    double radius = 8.0;
    double styling = 12.0;

    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...chars.map((item) {
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(radius),
                ),
                child: Text(
                  item,
                  style: TextStyle(
                    fontSize: styling,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
