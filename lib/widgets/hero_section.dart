import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiHeroSection extends StatelessWidget {
  const YammiHeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);
    final isColumnLayout = breakpoints.between(MOBILE, TABLET);
    final fullWidth = MediaQuery.sizeOf(context).width;

    final leftSection = SizedBox(
      height: 400,
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
              child: const Center(child: Text('Menu Item 1')),
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
                      height: 200,
                      decoration: raisedBorderDecoration(
                        backgroundColor: const Color(0xffFFD074),
                      ),
                      child: const Center(child: Text('Menu Item 2')),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 200,
                      decoration: raisedBorderDecoration(
                        backgroundColor: const Color(0xff96C4E3),
                      ),
                      child: const Center(child: Text('Menu Item 3')),
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
      height: 400,
      width: isColumnLayout ? double.infinity : null,
      decoration: raisedBorderDecoration(
        backgroundColor: const Color(0xffCAFE89),
      ),
      child: const Center(child: Text('Banner')),
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
