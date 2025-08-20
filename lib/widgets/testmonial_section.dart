import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/local_data/testimonials.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiTestimonialSection extends StatelessWidget {
  const YammiTestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: YammiColors.whiteColor,
        child: MaxWidthBox(
          maxWidth: 1200,
          child: Padding(
            padding: getResponsivePadding(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Customers love Yammi Yammi',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                ResponsiveRowColumn(
                  columnMainAxisSize: MainAxisSize.max,
                  rowMainAxisSize: MainAxisSize.max,
                  layout:
                      ResponsiveBreakpoints.of(context).isMobile ||
                          ResponsiveBreakpoints.of(context).isTablet
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  children: testimonials.map((testimonial) {
                    return ResponsiveRowColumnItem(
                      child:
                          ResponsiveBreakpoints.of(context).isMobile ||
                              ResponsiveBreakpoints.of(context).isTablet
                          ? Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: _TestimonialCard(
                                data: testimonial,
                                isDesktop: false,
                              ),
                            )
                          : Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: _TestimonialCard(
                                  data: testimonial,
                                  isDesktop: true,
                                ),
                              ),
                            ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  const _TestimonialCard({required this.data, required this.isDesktop});

  final Testimonial data;
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: raisedBorderDecoration(
        backgroundColor: YammiColors.whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.title,
            style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          isDesktop
              ? SizedBox(
                  height: ResponsiveBreakpoints.of(context).screenHeight * 0.05,
                  child: Text(
                    data.review,
                    style: GoogleFonts.lato(fontSize: 14),
                  ),
                )
              : Text(data.review, style: GoogleFonts.lato(fontSize: 14)),
          const SizedBox(height: 16),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(data.avatarUrl),
                radius: 20,
                backgroundColor: YammiColors.peachOrangeColor,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    data.role,
                    style: GoogleFonts.lato(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < data.rating ? Icons.star : Icons.star_border,
                color: YammiColors.goldenYellowColor,
                shadows: [
                  Shadow(
                    color: YammiColors.blackColor,
                    offset: Offset(0.3, 0.3),
                  ),
                ],
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
