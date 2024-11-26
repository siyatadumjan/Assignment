// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:first_assignment_project/view/dashboard.dart';
import 'package:flutter/material.dart';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({super.key});

  @override
  State<AreaOfCircleView> createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  double radius = 0;
  double result = 0;
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
                radius = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'radius',
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
                    result = 3.1416 * radius * radius;
                  });
                },
                child: const Text('Area of Circle'),
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
