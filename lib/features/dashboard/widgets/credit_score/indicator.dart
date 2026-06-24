import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool active;

  const Indicator({
    super.key,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 22 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: active
            ? const Color(0xff22C55E)
            : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}