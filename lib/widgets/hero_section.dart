import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';
import 'package:yammi_yammi/widgets/yammi_menu.dart';

class YammiHeroSection extends StatelessWidget {
  const YammiHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);
    final isColumnLayout = breakpoints.between(MOBILE, TABLET);
    final fullWidth = MediaQuery.sizeOf(context).width;

    final leftSection = SizedBox(
      height: 480,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: isColumnLayout ? double.infinity : fullWidth / 2,
              decoration: raisedBorderDecoration(
                backgroundColor: const Color(0xffFF72B4),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'We will feed you tasty and cheap food',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 16),
                          HoverButton(
                            btnText: 'Reserve a table',
                            onPressed: () {},
                            hasIcon: true,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/food3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: isColumnLayout ? double.infinity : fullWidth / 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: raisedBorderDecoration(
                        backgroundColor: const Color(0xffFFD074),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            //TODO - Add white container around the text like on teams
                            RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                "The best coffee",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Image.asset('assets/images/coffeeman.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 240,
                      decoration: raisedBorderDecoration(
                        backgroundColor: const Color(0xff96C4E3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '100+',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Reviews & Rating'.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  HoverButton(
                                    btnText: 'Leave feedback',
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: -160,
                              left: 0,
                              right: 0,
                              child: Image.asset('assets/images/hand.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    final bannerSection = Container(
      height: 480,
      width: isColumnLayout ? double.infinity : null,
      decoration: raisedBorderDecoration(
        backgroundColor: const Color(0xffCAFE89),
      ),
      child: BannerCarousel(),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: isColumnLayout
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                leftSection,
                const SizedBox(height: 16),
                bannerSection,
              ],
            )
          : Row(
              children: [
                leftSection,
                const SizedBox(width: 16),
                Expanded(child: bannerSection),
              ],
            ),
    );
  }
}

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({super.key});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page) {
                setState(() => currentPage = page);
              },
              children: [
                Container(
                  color: Color(0xffCAFE89),
                  child: Center(child: Text('PageOne')),
                ),
                Container(
                  color: Color(0xffCAFE89),
                  child: Center(child: Text('PageTwo')),
                ),
                Container(
                  color: Color(0xffCAFE89),
                  child: Center(child: Text('PageThree')),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 100,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height: 6,
                              decoration: BoxDecoration(
                                color: currentPage == index
                                    ? Color(0xffFECF69)
                                    : Colors.black87,
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
