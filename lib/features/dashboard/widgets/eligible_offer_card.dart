import 'package:flutter/material.dart';

class EligibleOfferCard
    extends StatelessWidget {
  const EligibleOfferCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(
        left: 16,
        top: 10,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xffF2FFF5),
        borderRadius:
        BorderRadius.circular(16),
      ),
      child: const Row(
        children: [

          CircleAvatar(
            backgroundColor:
            Color(0xff22C55E),
            child: Icon(
              Icons.percent,
              color: Colors.white,
            ),
          ),

          SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  "You're Eligible For A Lower Interest Rate",
                  style: TextStyle(
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
                Text(
                  "Contact your bank to learn more",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}