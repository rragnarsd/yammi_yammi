import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:yammi_yammi/utils/app_colors.dart';
import 'package:yammi_yammi/utils/app_styles.dart';

class YammiFooterSection extends StatelessWidget {
  const YammiFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletOrSmaller = ResponsiveBreakpoints.of(
      context,
    ).between(MOBILE, TABLET);

    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: YammiColors.blackColor, width: 2),
          color: YammiColors.mintGreenColor,
        ),
        child: MaxWidthBox(
          maxWidth: 1200,
          child: Padding(
            padding: getResponsivePadding(context),
            child: isTabletOrSmaller
                ? _FooterSmallScreen()
                : _FooterBigScreen(),
          ),
        ),
      ),
    );
  }
}

class _FooterBigScreen extends StatelessWidget {
  const _FooterBigScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: const [
        Row(
          children: [Expanded(flex: 2, child: _BrandSection(centered: false))],
        ),
        Divider(thickness: 1, color: YammiColors.blackColor),
        _FooterLinks(centered: false),
      ],
    );
  }
}

class _FooterSmallScreen extends StatelessWidget {
  const _FooterSmallScreen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 16,
      children: const [
        _BrandSection(centered: true),
        Divider(thickness: 1, color: YammiColors.blackColor),
        _FooterLinks(centered: true),
      ],
    );
  }
}

class _BrandSection extends StatelessWidget {
  const _BrandSection({required this.centered});

  final bool centered;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: centered
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/logo.png', height: 64),
        const SizedBox(height: 6),
        Text(
          "We make you feel good\nand tasty every day",
          style: GoogleFonts.lato(fontWeight: FontWeight.w600),
          textAlign: centered ? TextAlign.center : TextAlign.start,
        ),
        const SizedBox(height: 20),
        _IconRow(centered: centered),
      ],
    );
  }
}

class _IconRow extends StatelessWidget {
  const _IconRow({required this.centered});

  final bool centered;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisAlignment: centered
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        SocialIcons(icon: Icons.discord),
        SocialIcons(icon: Icons.alternate_email),
        SocialIcons(icon: Icons.alternate_email),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: YammiColors.blackColor, width: 1),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: YammiColors.blackColor),
    );
  }
}

class _FooterLinks extends StatelessWidget {
  const _FooterLinks({required this.centered});

  final bool centered;

  @override
  Widget build(BuildContext context) {
    final copyright = Text(
      "© 2024 Yammi Yammi, Inc. All rights reserved.",
      style: GoogleFonts.lato(),
      textAlign: centered ? TextAlign.center : TextAlign.start,
    );

    final links = IntrinsicHeight(
      child: Row(
        mainAxisAlignment: centered
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          Text("Privacy Policy", style: GoogleFonts.lato()),
          VerticalDivider(color: YammiColors.blackColor, thickness: 0.5),
          Text("License", style: GoogleFonts.lato()),
        ],
      ),
    );

    if (centered) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [copyright, const SizedBox(height: 8), links],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [copyright, links],
    );
  }
}
