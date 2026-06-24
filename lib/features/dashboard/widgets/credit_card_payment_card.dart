import 'package:flutter/material.dart';

class CreditCardPaymentCard extends StatelessWidget {
  const CreditCardPaymentCard({
    super.key,
  });

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
        borderRadius:
        BorderRadius.circular(20),
        border: Border.all(
          color: Colors.green.shade200,
        ),
      ),
      child: Column(
        children: [

          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: const [
              Text("Credit Card"),
              Text(
                "Due on 20th May",
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          const Row(
            children: [

              Icon(Icons.home),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    "HSBC Card",
                    style: TextStyle(
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                  Text("XXXX 0155")
                ],
              )
            ],
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [

              const Text(
                "₹25,295.00",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight:
                  FontWeight.bold,
                ),
              ),

              ElevatedButton(
                onPressed: () {},
                style:
                ElevatedButton.styleFrom(
                  backgroundColor:
                  Colors.green,
                ),
                child: const Text(
                  "Pay Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),

          const SizedBox(height: 12),

          Container(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color:
              Colors.green.shade50,
              borderRadius:
              BorderRadius.circular(
                  20),
            ),
            child: const Text(
              "Save ₹267 On This Payment",
            ),
          )
        ],
      ),
    );
  }
}