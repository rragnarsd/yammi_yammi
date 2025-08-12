import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';
import 'package:yammi_yammi/widgets/yammi_menu.dart';

class YammiTeamSection extends StatelessWidget {
  const YammiTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    final breakpoints = ResponsiveBreakpoints.of(context);

    final crossAxisCount = breakpoints.between(MOBILE, TABLET)
        ? 2
        : breakpoints.smallerThan(MOBILE)
        ? 1
        : 4;

    return SliverToBoxAdapter(
      child: Container(
        decoration: raisedBorderDecoration(
          backgroundColor: const Color(0xffFF72B4),
          borderRadius: 0,
        ),
        child: Padding(
          padding: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
              ? const EdgeInsets.all(4)
              : const EdgeInsets.all(32.0),
          child: Column(
            children: [
              YammiMenu(title: 'Our Team', btnText: 'About Us'),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 1,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: raisedBorderDecoration(
                        backgroundColor: Colors.blue,
                      ),
                      child: Center(child: Text('Grid Item ${index + 1}')),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: raisedBorderDecoration(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Center(child: Text('X Item')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
