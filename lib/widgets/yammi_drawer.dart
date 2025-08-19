import 'package:flutter/material.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/nav_section_types.dart';

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
        color: YammiColors.goldenYellowColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: YammiColors.goldenYellowColor),
              child: Image.asset('assets/images/logo.png'),
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
