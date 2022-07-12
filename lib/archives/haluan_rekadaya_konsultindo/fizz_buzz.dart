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
    var numbers = [12, 30, 56, 20, 45, 23];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fizz Buzz'),
      ),
      body: Center(
        child: Column(
          children: [
            ...numbers.map((number) {
              String textOutput = '$number';
              if (number % 3 == 0 && number % 5 == 0) {
                textOutput = 'FizzBuzz';
              }
              if (number % 3 == 0) {
                textOutput = 'Fizz';
              }
              if (number % 5 == 0) {
                textOutput = 'Buzz';
              }

              return Text(textOutput);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
