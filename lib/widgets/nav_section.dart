import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';
import 'package:yammi_yammi/utils/nav_section_types.dart';

class YammiNavSection extends StatefulWidget {
  const YammiNavSection({super.key, this.onSectionSelected});

  final void Function(NavSectionType)? onSectionSelected;

  @override
  State<YammiNavSection> createState() => _YammiNavSectionState();
}

class _YammiNavSectionState extends State<YammiNavSection> {
  NavSectionType? _hoveredSection;

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);
    final isTabletOrSmaller = breakpoints.smallerOrEqualTo(TABLET);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: raisedBorderDecoration(
          backgroundColor: const Color(0xffFCD36B),
        ),
        child: isTabletOrSmaller
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.abc, size: 54),
                      SizedBox(width: 8),
                      Text(
                        'Yammi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(Icons.menu, size: 30),
                      onPressed: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.abc, size: 54),
                      SizedBox(width: 8),
                      Text(
                        'Yammi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: NavSectionType.values.map((section) {
                      final isHovered = _hoveredSection == section;
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (_) =>
                            setState(() => _hoveredSection = section),
                        onExit: (_) => setState(() => _hoveredSection = null),
                        child: GestureDetector(
                          onTap: () => widget.onSectionSelected?.call(section),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
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
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
      ),
    );
  }
}
