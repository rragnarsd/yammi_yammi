import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class YammiFooterSection extends StatelessWidget {
  const YammiFooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletOrSmaller = ResponsiveBreakpoints.of(
      context,
    ).between(MOBILE, TABLET);

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          color: const Color(0xff66FFC9),
        ),
        child: Padding(
          padding: isTabletOrSmaller
              ? ResponsiveBreakpoints.of(context).smallerOrEqualTo(TABLET)
                    ? const EdgeInsets.all(4.0)
                    : const EdgeInsets.all(32.0)
              : const EdgeInsets.all(32.0),
          child: isTabletOrSmaller ? _FooterSmallScreen() : _FooterBigScreen(),
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
      children: const [
        Row(
          children: [Expanded(flex: 2, child: _BrandSection(centered: false))],
        ),
        SizedBox(height: 16),
        Divider(thickness: 1, color: Colors.black),
        SizedBox(height: 16),
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
      children: const [
        _BrandSection(centered: true),
        SizedBox(height: 16),
        Divider(thickness: 1, color: Colors.black),
        SizedBox(height: 16),
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
        const CircleAvatar(),
        const SizedBox(height: 16),
        Text(
          "We make you feel good\nand tasty every day",
          style: GoogleFonts.lato(),
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

  Widget _circleIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: 18, color: Colors.black),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: centered
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      children: [
        _circleIcon(Icons.discord),
        const SizedBox(width: 10),
        _circleIcon(Icons.alternate_email),
        const SizedBox(width: 10),
        _circleIcon(Icons.play_circle),
      ],
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
          VerticalDivider(color: Colors.black, thickness: 0.5),
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
