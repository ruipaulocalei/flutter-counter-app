import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: const Icon(
              Icons.refresh_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('Click${counter != 1 ? 's' : ''}',
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButtom(
            icon: Icons.refresh_outlined,
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtom(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: () {
              if (counter == 0) return;
              counter--;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtom(
            icon: Icons.plus_one_outlined,
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
