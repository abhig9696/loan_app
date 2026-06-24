import 'package:flutter/material.dart';

class BillPaymentSection extends StatelessWidget {
  const BillPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      "LIC",
      "FASTag",
      "DTH",
      "Mobile",
      "Broadband"
    ];

    return Container(
      margin:
      const EdgeInsets.all(16),

      padding:
      const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          const Text(
            "Pay Your Bills",
            style: TextStyle(
              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,
            children: items
                .map(
                  (e) => Column(
                children: [

                  CircleAvatar(
                    backgroundColor:
                    Colors.green
                        .shade50,
                    child:
                    const Icon(
                      Icons.payments,
                    ),
                  ),

                  const SizedBox(
                      height: 5),

                  Text(
                    e,
                    style:
                    const TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            )
                .toList(),
          )
        ],
      ),
    );
  }
}