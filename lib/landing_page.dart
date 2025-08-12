import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/nav_section_types.dart';
import 'package:yammi_yammi/widgets/footer_section.dart';
import 'package:yammi_yammi/widgets/hero_section.dart';
import 'package:yammi_yammi/widgets/menu_section.dart';
import 'package:yammi_yammi/widgets/nav_section.dart';
import 'package:yammi_yammi/widgets/team_section.dart';
import 'package:yammi_yammi/widgets/testmonial_section.dart';
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

    return MaxWidthBox(
      maxWidth: 1200,
      child: Scaffold(
        floatingActionButton: isTabletOrSmaller
            ? null
            : AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: _showFab ? 1.0 : 0.0,
                child: FloatingActionButton(
                  onPressed: () => _scrollToTop(),
                  backgroundColor: const Color(0xffFCD36B),
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
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3),
                  color: const Color(0xff66FFC9),
                ),
                child: Padding(
                  padding: isTabletOrSmaller
                      ? const EdgeInsets.all(4)
                      : const EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      YammiNavSection(
                        onSectionSelected: (section) {
                          scrollToSection(sectionKeys[section]!);
                        },
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
            YammiTeamSection(key: aboutUsKey),
            YammiTestimonialSection(key: reviewsKey),
            YammiFooterSection(),
          ],
        ),
      ),
    );
  }
}

class YammiDrawerMenu extends StatefulWidget {
  const YammiDrawerMenu({super.key, required this.onSectionSelected});

  final void Function(NavSectionType) onSectionSelected;

  @override
  State<YammiDrawerMenu> createState() => _YammiDrawerMenuState();
}

class _YammiDrawerMenuState extends State<YammiDrawerMenu> {
  NavSectionType? _hoveredSection;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(),
      child: Container(
        color: const Color(0xffFCD36B),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xffFCD36B)),
              child: Row(
                children: const [
                  Icon(Icons.abc, size: 54),
                  SizedBox(width: 8),
                  Text(
                    'Yammi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ...NavSectionType.values.map((section) {
              final isHovered = _hoveredSection == section;
              return ListTile(
                title: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (_) => setState(() => _hoveredSection = section),
                  onExit: (_) => setState(() => _hoveredSection = null),
                  child: Text(
                    section.label,
                    style: TextStyle(
                      decorationThickness: 2,
                      decoration: isHovered
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      fontWeight: isHovered
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                onTap: () => widget.onSectionSelected(section),
              );
            }),
          ],
        ),
      ),
    );
  }
}
