import 'package:flutter/material.dart';

class SupportBanner
    extends StatelessWidget {
  const SupportBanner({
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
                  "NEED EXPERT GUIDANCE?",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Our Team Is Ready To Answer All Your Questions.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                ElevatedButton(
                  onPressed: () {},
                  child:
                  const Text("Chat Now"),
                )
              ],
            ),
          ),

          Image.asset(
            "assets/images/support.png",
            height: 140,
          )
        ],
      ),
    );
  }
}