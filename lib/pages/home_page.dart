import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TASK'),
        ),
        body: const Center(
          child: OutputWidget(),
        ),
      ),
    );
  }
}

class OutputWidget extends StatefulWidget {
  const OutputWidget({super.key});

  @override
  _OutputWidgetState createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  List<String> inputWords = ["APPLE", "A", "R", "R", "O", "T", "TITANIC"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < inputWords.length; i++)
          Text(
            i == 0 ? inputWords[i].split('').join(' ') : '    ${inputWords[i]}',
            style: const TextStyle(fontSize: 20),
          ),
      ],
    );
  }
}
