import 'package:flutter/material.dart';

class TrackSpendCard
    extends StatelessWidget {
  const TrackSpendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient:
        const LinearGradient(
          colors: [
            Color(0xff14B85A),
            Color(0xff8AE55D),
          ],
        ),
        borderRadius:
        BorderRadius.circular(20),
      ),
      child: Column(
        children: [

          const Text(
            "Your Daily Spending Report Is Ready",
            style: TextStyle(
              color: Colors.white,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [

              Expanded(
                child: Container(
                  padding:
                  const EdgeInsets.all(
                      16),
                  decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius
                        .circular(
                        12),
                  ),
                  child: const Column(
                    children: [
                      Text("Debit"),
                      Text("₹40,000")
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Container(
                  padding:
                  const EdgeInsets.all(
                      16),
                  decoration:
                  BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius
                        .circular(
                        12),
                  ),
                  child: const Column(
                    children: [
                      Text("Credit"),
                      Text("₹11,50,496")
                    ],
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "View Full Report",
              ),
            ),
          )
        ],
      ),
    );
  }
}