import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/nav_section_types.dart';
import 'package:yammi_yammi/widgets/footer_section.dart';
import 'package:yammi_yammi/widgets/hero_section.dart';
import 'package:yammi_yammi/widgets/menu_section.dart';
import 'package:yammi_yammi/widgets/nav_section.dart';
import 'package:yammi_yammi/widgets/team_section.dart';
import 'package:yammi_yammi/widgets/testmonial_section.dart';
import 'package:yammi_yammi/widgets/yammi_drawer.dart';
import 'package:yammi_yammi/widgets/yammi_menu.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  bool _showFab = false;

  final GlobalKey menuKey = GlobalKey();
  final GlobalKey reviewsKey = GlobalKey();
  final GlobalKey aboutUsKey = GlobalKey();

  late final Map<NavSectionType, GlobalKey> sectionKeys;

  @override
  void initState() {
    super.initState();
    sectionKeys = {
      NavSectionType.menu: menuKey,
      NavSectionType.reviews: reviewsKey,
      NavSectionType.aboutUs: aboutUsKey,
    };
    _scrollController.addListener(() {
      if (_scrollController.offset > 300 && !_showFab) {
        setState(() => _showFab = true);
      } else if (_scrollController.offset <= 100 && _showFab) {
        setState(() => _showFab = false);
      }
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTabletOrSmaller = ResponsiveBreakpoints.of(
      context,
    ).smallerOrEqualTo(TABLET);

    return Scaffold(
      floatingActionButton: isTabletOrSmaller
          ? null
          : AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _showFab ? 1.0 : 0.0,
              child: FloatingActionButton(
                onPressed: () => _scrollToTop(),
                backgroundColor: YammiColors.goldenYellowColor,
                child: const Icon(Icons.arrow_upward),
              ),
            ),
      endDrawer: isTabletOrSmaller
          ? YammiDrawerMenu(
              onSectionSelected: (section) {
                Navigator.of(context).pop();
                scrollToSection(sectionKeys[section]!);
              },
            )
          : null,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            key: menuKey,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: YammiColors.blackColor, width: 3),
                color: YammiColors.mintGreenColor,
              ),
              child: MaxWidthBox(
                maxWidth: 1200,
                child: Padding(
                  padding: isTabletOrSmaller
                      ? const EdgeInsets.all(4)
                      : const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      YammiNavSection(
                        onSectionSelected: (section) =>
                            scrollToSection(sectionKeys[section]!),
                      ),
                      YammiHeroSection(),
                      SizedBox(height: 16),
                      YammiMenu(title: 'Our Menu', btnText: 'All menu'),
                      YammiMenuSection(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          YammiTeamSection(key: aboutUsKey),
          YammiTestimonialSection(key: reviewsKey),
          YammiFooterSection(),
        ],
      ),
    );
  }
}
