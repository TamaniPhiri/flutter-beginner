import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter newbie',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
        title: const Text("Planner"),
      ),
      body: const Column(children: [Progress(), TaskList()]),
    );
  }
}

class Progress extends StatelessWidget {
  const Progress({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("You are this far from completing your tasks"),
        LinearProgressIndicator(
          value: 0.0,
        )
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TaskItem(label: "go for class"),
        TaskItem(label: "go for class")
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;
  const TaskItem({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [const Checkbox(onChanged: null, value: false), Text(label)],
    );
  }
}
