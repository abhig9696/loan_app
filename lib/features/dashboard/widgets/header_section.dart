import 'package:flutter/material.dart';
import '../domain/dashboard_entity.dart';

class HeaderSection extends StatelessWidget {
  final DashboardEntity data;

  const HeaderSection({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: double.infinity,

      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff02291C),
            Color(0xff14B85A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Stack(
        children: [

          Positioned(
            right: -80,
            top: -60,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.08),
                shape: BoxShape.circle,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                Row(
                  children: [

                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                      AssetImage(
                        "assets/images/profile.png",
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Hi, ${data.userName}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          const Text(
                            "Have a good day!",
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                const Text(
                  "Instant Loan upto",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                Text(
                  "₹${data.loanAmount.toInt()}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Image.asset(
                  "assets/images/coins.png",
                  height: 110,
                ),

                const SizedBox(height: 10),
              ],
            ),
          )
        ],
      ),
    );
  }
}