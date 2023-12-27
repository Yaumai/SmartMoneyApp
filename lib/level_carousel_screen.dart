import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'module.dart';

class LevelCarouselScreen extends StatefulWidget {
  final CarouselContent carouselContent;
  final String levelTitle;

  const LevelCarouselScreen({Key? key, required this.carouselContent, required this.levelTitle}) : super(key: key);

  @override
  _LevelCarouselScreenState createState() => _LevelCarouselScreenState();
}

class _LevelCarouselScreenState extends State<LevelCarouselScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.levelTitle),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (currentPage + 1) / widget.carouselContent.items.length,
            minHeight: 10,
            backgroundColor: Colors.grey,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          Expanded(
            child: CarouselSlider(
              items: widget.carouselContent.items,
              options: CarouselOptions(
                aspectRatio: 1.5,
                enableInfiniteScroll: false,
                viewportFraction: 0.8,
                height: 700,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${currentPage + 1}/${widget.carouselContent.items.length}',
              style: const TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
