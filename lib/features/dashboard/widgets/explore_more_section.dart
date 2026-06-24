import 'package:flutter/material.dart';

class ExploreMoreSection
    extends StatelessWidget {
  const ExploreMoreSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const Padding(
          padding:
          EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Align(
            alignment:
            Alignment.centerLeft,
            child: Text(
              "Explore More With SwipeLoan",
              style: TextStyle(
                fontSize: 20,
                fontWeight:
                FontWeight.bold,
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        Row(
          children: [

            _item(
              "assets/images/predictor.png",
              "Score Predictor",
            ),

            _item(
              "assets/images/calculator.png",
              "Score Calculator",
            ),

            _item(
              "assets/images/wallet.png",
              "Loan Advisor",
            ),
          ],
        ),
      ],
    );
  }

  Widget _item(
      String image,
      String title) {
    return Expanded(
      child: Container(
        height: 170,
        margin:
        const EdgeInsets.all(8),
        padding:
        const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.circular(
              16),
        ),
        child: Column(
          children: [

            Expanded(
              child: Image.asset(
                image,
              ),
            ),

            Text(
              title,
              textAlign:
              TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}