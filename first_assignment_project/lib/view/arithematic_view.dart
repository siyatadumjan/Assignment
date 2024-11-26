// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_assignment_project/view/dashboard.dart';
import 'package:flutter/material.dart';

class ArithematicView extends StatefulWidget {
  const ArithematicView({super.key});

  @override
  State<ArithematicView> createState() => _ArithematicViewState();
}

class _ArithematicViewState extends State<ArithematicView> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter First No',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Second No',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Result : $result',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first + second;
                  });
                },
                child: const Text('Addition'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // State lai change gara
                  // in short build method ma feri hau
                  setState(() {
                    result = first - second;
                  });
                },
                child: const Text('Subtraction'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first * second;
                  });
                },
                child: const Text('Multiplication'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dashboard()));
                },
                child: const Text('Dashboard'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
