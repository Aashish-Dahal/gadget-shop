import 'dart:async' show Timer;

import 'package:flutter/material.dart'
    show
        Alignment,
        BorderRadius,
        BoxDecoration,
        BoxFit,
        BuildContext,
        ClipRRect,
        Color,
        Colors,
        Container,
        Curve,
        Curves,
        EdgeInsets,
        Image,
        Key,
        Padding,
        PageController,
        PageView,
        Positioned,
        Row,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        Widget;

import 'package:jandj_customer/core/utils/constants.dart';

class SlideCarousel extends StatefulWidget {
  final List images;
  final double? height;
  final Curve? curve;
  final EdgeInsets? padding;
  final Duration? duration;
  final Color indicatorColor;
  const SlideCarousel({
    Key? key,
    this.padding,
    this.height = 160,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.linear,
    this.indicatorColor = Colors.red,
    required this.images,
  }) : super(key: key);

  @override
  State<SlideCarousel> createState() => _SlideCarouselState();
}

class _SlideCarouselState extends State<SlideCarousel> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _currentIndex++;
      _pageController.animateToPage(_currentIndex,
          duration: widget.duration!, curve: widget.curve!);
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10).merge(widget.padding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: widget.height,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    if (index == 0) {
                      _currentIndex = widget.images.length;
                    }
                  });
                },
                itemBuilder: (context, index) {
                  return Image.network(
                    widget.images[index % widget.images.length],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Row(
                children: widget.images.map((e) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                        color: e ==
                                widget.images[
                                    _currentIndex % widget.images.length]
                            ? widget.indicatorColor
                            : Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                    width: 13,
                    height: 3,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
