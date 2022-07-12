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
    return Scaffold(
      body: MaterialBanner(
        content: const Text('This is Banner'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Sign In'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Dismiss'),
          ),
        ],
      ),
    );
  }
}
