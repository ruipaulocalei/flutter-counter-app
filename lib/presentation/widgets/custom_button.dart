import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButtom({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
