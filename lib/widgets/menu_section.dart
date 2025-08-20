import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/local_data/menu_items.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiMenuSection extends StatelessWidget {
  const YammiMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount =
        ResponsiveBreakpoints.of(context).between(MOBILE, TABLET) ? 1 : 2;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: AlignedGridView.count(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        itemCount: menus.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final menu = menus[index];

          return Container(
            decoration: BoxDecoration(
              color: menu.bgColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: YammiColors.blackColor, width: 2),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menu.title,
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: menu.items.length,
                        itemBuilder: (context, itemIndex) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          menu.items[itemIndex].title,
                                          style: GoogleFonts.lato(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          "\$${menu.items[itemIndex].price.toStringAsFixed(2)}",
                                          style: GoogleFonts.lato(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      menu.items[itemIndex].description,
                                      style: GoogleFonts.lato(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                  ],
                                ),
                              ),
                              if (itemIndex < menu.items.length)
                                Divider(
                                  color: YammiColors.blackColor,
                                  thickness: 1,
                                  height: 16,
                                ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      _SeeMoreButton(index: index),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SeeMoreButton extends StatefulWidget {
  const _SeeMoreButton({required this.index});

  final int index;

  @override
  State<_SeeMoreButton> createState() => _SeeMoreButtonState();
}

class _SeeMoreButtonState extends State<_SeeMoreButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: () {},
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOut,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: raisedBorderDecoration(
              backgroundColor: _isHovered
                  ? Colors.grey[100]!
                  : YammiColors.blackColor,
              borderColor: YammiColors.blackColor,
              borderWidth: 0,
              shadowOffset: _isHovered
                  ? const Offset(4, 4)
                  : const Offset(2, 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See More",
                  style: GoogleFonts.lato(
                    color: _isHovered
                        ? YammiColors.blackColor
                        : YammiColors.whiteColor,
                    fontWeight: _isHovered
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                const SizedBox(width: 4),
                Transform.rotate(
                  angle: 45 * 3.1415926535 / 180,
                  child: Icon(
                    Icons.arrow_upward,
                    color: _isHovered
                        ? YammiColors.blackColor
                        : YammiColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
