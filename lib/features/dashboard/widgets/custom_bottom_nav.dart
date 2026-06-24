import 'package:flutter/material.dart';

class CustomBottomNav
    extends StatelessWidget {
  const CustomBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 2,

      type:
      BottomNavigationBarType.fixed,

      selectedItemColor:
      Colors.green,

      items: const [

        BottomNavigationBarItem(
          icon: Icon(
            Icons.credit_card,
          ),
          label: "Credit Card",
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.currency_rupee,
          ),
          label: "Instant Loan",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.bar_chart,
          ),
          label: "CIP",
        ),

        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance,
          ),
          label: "Other Loan",
        ),
      ],
    );
  }
}
