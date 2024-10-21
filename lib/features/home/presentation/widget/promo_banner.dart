import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  _PromoBannerState createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // List of image URLs for the slider
  final List<String> _promoImages = [
    'https://unsplash.it/350/150?image=1',
    'https://unsplash.it/350/150?image=2',
    'https://unsplash.it/350/150?image=3',
    'https://unsplash.it/350/150?image=4',
    'https://unsplash.it/350/150?image=5',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Slider section with a fixed height
        SizedBox(
          height: 200, // Set a fixed height for the PageView
          child: PageView.builder(
            controller: _pageController,
            itemCount: _promoImages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(_promoImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        // Dot pagination section on the left
        Container(
          margin: const EdgeInsets.only(left: 14), // Add margin here
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              _promoImages.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
