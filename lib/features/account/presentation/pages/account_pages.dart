import 'package:flutter/material.dart';

class AccountPages extends StatefulWidget {
  const AccountPages({super.key});

  @override
  _AccountPagesState createState() => _AccountPagesState();
}

class _AccountPagesState extends State<AccountPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20),
                      Text(
                        'Syahrul Bhudi Ferdiansyah',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        '+6285755730905',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 43),
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/45c3fc6a-f732-4461-8a56-6ded77113310/original=true,quality=90/00084-159609999.jpeg'), // Replace with your image
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: [
                  _buildProfileOption('Account Type', 'FULL SERVICE'),
                  _buildProfileOption('Account Settings', ''),
                  _buildProfileOption('LinkAja Syariah', 'Not Active'),
                  _buildProfileOption('Payment Method', ''),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: [
                  _buildProfileOption('Email', 'syahrul@gmail.com'),
                  _buildProfileOption('Security Question', 'Set'),
                  _buildProfileOption('PIN Settings', ''),
                  _buildProfileOption('Language', 'English'),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Column(
                children: [
                  _buildProfileOption('Terms of Service', ''),
                  _buildProfileOption('Privacy Policy', ''),
                  _buildProfileOption('Help Center', ''),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build profile option items
  Widget _buildProfileOption(String title, String subtitle) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          if (subtitle.isNotEmpty)
            Text(subtitle, style: TextStyle(color: Colors.grey)),
        ],
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.red),
      onTap: () {},
    );
  }
}
