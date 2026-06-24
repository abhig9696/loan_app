import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/bill_payment_section.dart';
import '../bloc/dashbaord_bloc.dart';
import '../bloc/dashbaord_state.dart';
import '../widgets/credit_card_payment_card.dart';
import '../widgets/credit_score/credit_score_section.dart';
import '../widgets/earn_coins_card.dart';
import '../widgets/eligible_offer_card.dart';
import '../widgets/header_section.dart';
import '../widgets/loan_option_card.dart';
import '../widgets/support_banner.dart';
import '../widgets/explore_more_section.dart';
import '../widgets/track_spend_card.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is DashboardLoaded) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    HeaderSection(data: state.data),

                    const CreditScoreSection(),

                    const EarnCoinsCard(),

                    const CreditCardPaymentCard(),

                    const SizedBox(height: 8),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [

                          EligibleOfferCard(),

                          EligibleOfferCard(),
                        ],
                      ),
                    ),

                    const LoanOptionCard(),

                    const BillPaymentSection(),

                    const TrackSpendCard(),

                    const ExploreMoreSection(),

                    const SupportBanner(),

                    const SizedBox(height: 100),
                  ],
                ),
              ),
            );
          }

          return const Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}