import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiTestimonialSection extends StatelessWidget {
  const YammiTestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletOrSmaller = ResponsiveBreakpoints.of(
      context,
    ).between(MOBILE, TABLET);

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: raisedBorderDecoration(
          backgroundColor: Colors.white,
          borderRadius: 0,
        ),
        child: Padding(
          padding: ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
              ? const EdgeInsets.all(4.0)
              : const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Customers love Yammi Yammi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              isTabletOrSmaller
                  ? Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: raisedBorderDecoration(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: raisedBorderDecoration(
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 310,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: raisedBorderDecoration(
                              backgroundColor: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 310,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: raisedBorderDecoration(
                              backgroundColor: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
