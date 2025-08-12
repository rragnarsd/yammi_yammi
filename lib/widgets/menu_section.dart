import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiMenuSection extends StatelessWidget {
  const YammiMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount =
        ResponsiveBreakpoints.of(context).between(MOBILE, TABLET)
        ? 1
        : ResponsiveBreakpoints.of(context).isDesktop
        ? 2
        : 2;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          childAspectRatio: 2.0,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            decoration: raisedBorderDecoration(backgroundColor: Colors.blue),
            child: Center(
              child: Text(
                'Grid Item ${index + 1}',
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
