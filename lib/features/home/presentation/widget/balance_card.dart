import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi, Syahrul Bhudi Ferdiansyah',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: Colors.white, // Background putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 16, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your Balance',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 68, 68, 68))),
                      Row(
                        children: [
                          Text('Rp 9,747',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Theme.of(context).primaryColor,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 2),
              Card(
                color: Colors.white, // Background putih
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 16, right: 40), // Memberikan padding ke dalam card
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bonus Balance',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 68, 68, 68))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time_filled,
                              color: Colors.yellow, size: 18),
                          SizedBox(width: 4),
                          Text('0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.arrow_circle_right,
                            color: Theme.of(context).primaryColor,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
