// ignore_for_file: library_private_types_in_public_api

import 'package:clone_linkaja/features/account/presentation/pages/account_pages.dart';
import 'package:clone_linkaja/features/history/presentation/pages/history_page.dart';
import 'package:clone_linkaja/features/home/presentation/pages/home_page.dart';
import 'package:clone_linkaja/features/inbox/presentation/pages/inbox_page.dart';
import 'package:clone_linkaja/features/pay/presentation/pages/pay_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // Define your pages
  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const PayPage(),
    const InboxPage(),
    const AccountPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 216, 23, 23),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Icon(
                Icons.qr_code,
                size: 30.0,
                color: Colors.white,
              ),
            ),
            label: 'Pay',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.inbox),
            label: 'Inbox',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red[700],
        unselectedItemColor: Colors.black87,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
