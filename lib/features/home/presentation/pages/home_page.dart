import 'package:clone_linkaja/features/home/presentation/widget/actionbox.dart';
import 'package:clone_linkaja/features/home/presentation/widget/balance_card.dart';
import 'package:clone_linkaja/features/home/presentation/widget/best_deals.dart';
import 'package:clone_linkaja/features/home/presentation/widget/feature_grid.dart';
import 'package:clone_linkaja/features/home/presentation/widget/lastest.dart';
import 'package:clone_linkaja/features/home/presentation/widget/promo_banner.dart';
import 'package:clone_linkaja/main.dart';
import 'package:clone_linkaja/shared/widget/header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  // Menggunakan SafeArea untuk menghindari status bar
                  child: Container(
                    color:
                        Colors.white, // Mengatur latar belakang menjadi putih
                    padding: EdgeInsets.only(left: 14, right: 14),
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Header(), // Menggunakan Header di bagian atas
                      ],
                    ),
                  ),
                ),
                BalanceCard(),
                ActionBox(),
                FeatureGrid(),
                PromoBanner(),
                BestDeals(),
                Lastest()
              ],
            ),
          ),
          // bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
