import 'package:flutter/material.dart';

import 'credit_score_empty_card.dart';
import 'credit_score_progress_card.dart';
import 'indicator.dart';

class CreditScoreSection extends StatefulWidget {
  const CreditScoreSection({super.key});

  @override
  State<CreditScoreSection> createState() =>
      _CreditScoreSectionState();
}

class _CreditScoreSectionState
    extends State<CreditScoreSection> {

  final PageController controller =
  PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        SizedBox(
          height: 340,

          child: PageView(
            controller: controller,

            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },

            children: const [

              CreditScoreEmptyCard(),

              CreditScoreProgressCard(),
            ],
          ),
        ),

        Row(
          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            Indicator(
              active:
              currentIndex == 0,
            ),

            const SizedBox(width: 8),

            Indicator(
              active:
              currentIndex == 1,
            ),
          ],
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}