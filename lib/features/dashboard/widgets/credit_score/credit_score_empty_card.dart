import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CreditScoreEmptyCard
    extends StatelessWidget {

  const CreditScoreEmptyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin:
      const EdgeInsets.all(16),

      padding:
      const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(30),
      ),

      child: Column(
        children: [

          Container(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color:
              Colors.green.shade50,
              borderRadius:
              BorderRadius.circular(
                  20),
            ),
            child: const Text(
              "Score Improvement Plan Active",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),

          const SizedBox(height: 24),

          Row(
            children: [

              Expanded(
                child:
                CircularPercentIndicator(
                  radius: 55,
                  lineWidth: 10,
                  percent: 0,

                  center: const Text(
                    "-1",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  progressColor:
                  Colors.green,

                  backgroundColor:
                  Colors.grey.shade200,
                ),
              ),

              const SizedBox(width: 20),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,

                  children: [

                    const Text(
                      "Score Improvement Plan",
                      style: TextStyle(
                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(
                        height: 12),

                    const Text(
                      "0% Completed",
                      style: TextStyle(
                        color:
                        Colors.green,
                      ),
                    ),

                    const SizedBox(
                        height: 12),

                    const LinearProgressIndicator(
                      value: 0,
                    ),

                    const SizedBox(
                        height: 20),

                    OutlinedButton(
                      onPressed: () {},

                      child: const Text(
                        "Refresh my Score",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Spacer(),

          const Text(
            "Your Credit Score Is -1",
            style: TextStyle(
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            "You Have Not Taken Any Loan Till Now.",
            textAlign:
            TextAlign.center,
          )
        ],
      ),
    );
  }
}