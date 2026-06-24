import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CreditScoreProgressCard
    extends StatelessWidget {

  const CreditScoreProgressCard({
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

        crossAxisAlignment:
        CrossAxisAlignment.start,

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
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Your Score Progress",
            style: TextStyle(
              fontSize: 20,
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: LineChart(
              LineChartData(
                minY: 700,
                maxY: 850,

                lineBarsData: [

                  LineChartBarData(
                    spots: const [

                      FlSpot(0, 720),
                      FlSpot(1, 750),
                      FlSpot(2, 785),
                      FlSpot(3, 805),
                      FlSpot(4, 820),
                      FlSpot(5, 845),
                    ],

                    isCurved: true,
                    color: Colors.green,
                    barWidth: 4,
                  ),
                ],
              ),
            ),
          ),

          Container(
            padding:
            const EdgeInsets.all(12),

            decoration: BoxDecoration(
              color:
              Colors.green.shade50,
              borderRadius:
              BorderRadius.circular(
                  12),
            ),

            child: const Row(
              children: [

                Icon(
                  Icons.trending_up,
                  color: Colors.green,
                ),

                SizedBox(width: 10),

                Expanded(
                  child: Text(
                    "Your Score Improved By 100 Points!",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}