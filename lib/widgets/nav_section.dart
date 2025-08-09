import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

enum NavSectionType {
  home,
  menu,
  reviews,
  aboutUs;

  String get label => switch (this) {
    NavSectionType.home => 'Home',
    NavSectionType.menu => 'Menu',
    NavSectionType.reviews => 'Reviews',
    NavSectionType.aboutUs => 'About us',
  };
}

class YammiNavSection extends StatefulWidget {
  const YammiNavSection({super.key});

  @override
  State<YammiNavSection> createState() => _YammiNavSectionState();
}

class _YammiNavSectionState extends State<YammiNavSection> {
  NavSectionType? _hoveredSection;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: raisedBorderDecoration(
          backgroundColor: const Color(0xffFCD36B),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.abc, size: 54),
                const SizedBox(width: 8),
                const Text(
                  'Yammi Yammi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: NavSectionType.values.map((section) {
                final isHovered = _hoveredSection == section;
                return MouseRegion(
                  cursor: SystemMouseCursors.click,
                  onEnter: (_) => setState(() => _hoveredSection = section),
                  onExit: (_) => setState(() => _hoveredSection = null),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      section.label,
                      style: TextStyle(
                        fontSize: 16,
                        decoration: isHovered
                            ? TextDecoration.underline
                            : TextDecoration.none,
                        decorationThickness: 2,
                        fontWeight: isHovered
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              decoration: raisedBorderDecoration(
                backgroundColor: Colors.white,
                borderRadius: 24,
              ),
              child: Row(
                children: [
                  Icon(Icons.phone, size: 16),
                  SizedBox(width: 4),
                  Text('Swipe to call', style: GoogleFonts.lato()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
