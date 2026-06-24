import 'package:flutter/material.dart';

class EarnCoinsCard extends StatelessWidget {
  const EarnCoinsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.green.shade100,
        ),
      ),
      child: Row(
        children: [
          const Text(
            "🎁",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(width: 12),

          const Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "Earn 100 Coins",
                  style: TextStyle(
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
                Text(
                  "Complete actions and earn rewards",
                )
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward_ios,
            color: Colors.green.shade400,
            size: 18,
          )
        ],
      ),
    );
  }
}