import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  PageController? _pageController;
  int _currentIndex = 0;

  final List<String> images = [
    'assets/images/studying1.png',
    'assets/images/studying2.png',
    'assets/images/studying3.png',
  ];

  final List<String> texts = [
    'Unlock Your Potential, One Lesson at a Time.',
    'Empowering Minds, Enabling Futures.',
    'Learn Anytime, Achieve Anywhere.',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Text(
            texts[_currentIndex],
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          flex: 5,
          child: SizedBox(
            width: 350,
            child: PageView.builder(
              controller: _pageController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  images[index],
                  fit: BoxFit.contain,
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: DotsIndicator(
              dotsCount: images.length,
              position: _currentIndex.toInt(),
              decorator: const DotsDecorator(
                size: Size(9.0, 5.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(),
                ),
                activeSize: Size(18.0, 5.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
