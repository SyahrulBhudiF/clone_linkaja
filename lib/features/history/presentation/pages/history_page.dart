import 'package:clone_linkaja/features/history/presentation/widget/card.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 1.0),
              child: Text(
                'Transaction History',
                style: TextStyle(
                  fontWeight: FontWeight.w600, // Semi-bold
                  fontSize: 18,
                ),
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color:
                      Colors.red, // Warna border merah di bawah tab yang aktif
                  width: 4.0, // Lebar border
                ),
                insets: EdgeInsets.symmetric(
                    horizontal: 128), // Membuat border setengah dari lebar tab
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    'Pending',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/aset_complete_transaction.png', // Path to your image asset
                      height: 150,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'All transactions are completed!',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Any Pending transactions will appear in this page',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    TransactionCard(
                      title: 'Pay Merchant',
                      date: '15 Sept 2024 14:30',
                      amount: 'Rp 45.000',
                      status: 'Success',
                      description: 'Indomaret Purchase',
                    ),
                    TransactionCard(
                      title: 'Pay Merchant',
                      date: '15 Sept 2024 14:30',
                      amount: 'Rp 45.000',
                      status: 'Success',
                      description: 'Indomaret Purchase',
                    ),
                    TransactionCard(
                      title: 'Pay Merchant',
                      date: '15 Sept 2024 14:30',
                      amount: 'Rp 145.000',
                      status: 'Fail',
                      description: 'BCA',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
