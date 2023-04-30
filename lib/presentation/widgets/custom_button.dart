import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final IconData icon;
  const CustomButtom({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
