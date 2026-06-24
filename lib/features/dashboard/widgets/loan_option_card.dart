import 'package:flutter/material.dart';

class LoanOptionCard
    extends StatelessWidget {
  const LoanOptionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [

                const Text(
                  "Loan Option For You",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const Text(
                  "Upto 1 Lakhs ⚡",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  "• Hassle free process",
                ),

                const Text(
                  "• Instant transfer",
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {},
                  child:
                  const Text("Apply Now"),
                )
              ],
            ),
          ),

          Image.asset(
            "assets/images/loan.png",
            width: 110,
          )
        ],
      ),
    );
  }
}